FROM alpine:latest

ENV PATH=/npm/node_modules/.bin:$PATH
RUN apk --update-cache add \
        openssh \
        git \
        npm

WORKDIR /npm
COPY ["package.json", "package-lock.json", "/npm"]
RUN npm install /npm

WORKDIR /workdir
