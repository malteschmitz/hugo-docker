FROM ubuntu

RUN apt-get update && apt-get install -y git ssh curl rsync
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install -y nodejs
ARG HUGO_VERSION="0.55.6"
RUN curl -L -o hugo.deb "https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_Linux-64bit.deb" && dpkg -i hugo.deb
