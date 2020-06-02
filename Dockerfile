FROM nginx:latest
LABEL maintainer="Vitor Jordão"

EXPOSE 80/tcp

ENV PATH="/root/.yarn/bin:${PATH}"

RUN apt-get -y update && \
    apt-get -y install bash curl git gpg zlib1g-dev

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -  && \
    apt-get install -y nodejs

RUN curl -o- -L https://yarnpkg.com/install.sh | sh -s