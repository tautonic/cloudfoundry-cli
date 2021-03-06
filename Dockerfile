FROM microsoft/aspnetcore-build:2.0.3

RUN apt-get update
RUN apt-get install -y ca-certificates uuid-runtime jq

ADD https://cli.run.pivotal.io/stable?release=linux64-binary&version=6.33.1 /tmp/cf-cli.tgz

RUN mkdir -p /usr/local/bin && \
    tar -xzf /tmp/cf-cli.tgz -C /usr/local/bin && \
    cf --version
