FROM docker.io/project31/aarch64-alpine-qemu:3.5-7

RUN [ "cross-build-start" ]

FROM alpine:3.8
MAINTAINER leosun <leosunsl@outlook.com>

WORKDIR /
ENV NPS_VERSION 0.23.2

RUN set -x && \
	wget --no-check-certificate https://github.com/cnlh/nps/releases/download/v${NPS_VERSION}/linux_arm64_server.tar.gz && \ 
	tar xzf linux_arm64_server.tar.gz && \
	cd /nps && \
	mkdir \npsconf && \
	cp conf/* npsconf/ && \
	cd .. && \
	rm -rf *.tar.gz

ADD start.sh /nps/npsconf/start.sh

RUN chmod +x /nps/npsconf/start.sh

VOLUME /nps/conf

CMD /nps/npsconf/start.sh

RUN [ "cross-build-end" ]