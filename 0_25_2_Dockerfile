FROM alpine:3.8
MAINTAINER leosun <leosunsl@outlook.com>

WORKDIR /nps
ENV NPS_VERSION 0.25.2
ENV NPS_RELEASE_URL https://github.com/cnlh/nps/releases/download/v${NPS_VERSION}/linux_amd64_server.tar.gz

RUN set -x && \
	wget --no-check-certificate  ${NPS_RELEASE_URL} && \ 
	tar xzf linux_amd64_server.tar.gz && \
    rm linux_amd64_server.tar.gz

VOLUME /nps/conf

CMD /nps/nps debug