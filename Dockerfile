FROM alpine:latest

RUN apk --update-cache add \
        openssh \
        git \
        npm && \
    npm install -g textlint \
        textlint-rule-preset-ja-technical-writing \
        textlint-rule-preset-ja-spacing \
        textlint-rule-no-mix-dearu-desumasu \
        textlint-filter-rule-comments \
        textlint-filter-rule-allowlist \
        textlint-plugin-html \
        textlint-plugin-latex2e

WORKDIR /workdir
