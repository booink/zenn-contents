FROM golang:buster AS builder

WORKDIR /go/src

RUN git clone https://github.com/jesseduffield/lazygit.git && \
    cd lazygit && \
    go install

FROM node:buster

RUN apt-get update -y && \
    apt-get install -y git

COPY --from=builder /go/bin/lazygit /usr/local/bin/lazygit

WORKDIR /app

COPY ./package.json ./package-lock.json ./

RUN npm install --no-optional && npm cache clean --force
