FROM ubuntu:15.10
MAINTAINER Lucas Mundim "lucas.mundim@gmail.com"

# Version
ENV LOGSTASH_VERSION 2.3.1

ENV PATH="/opt/logstash/bin:$PATH"
ENV DEBIAN_FRONTEND noninteractive

# update and upgrade packages
RUN apt-get update && apt-get upgrade -y && apt-get install -y \
  openjdk-8-jre \
  wget \
  && apt-get clean

RUN wget https://download.elasticsearch.org/logstash/logstash/logstash-${LOGSTASH_VERSION}.tar.gz -O /tmp/logstash.tar.gz 2> /dev/null

RUN mkdir -p /opt/logstash && tar zxvf /tmp/logstash.tar.gz --strip 1 -C /opt/logstash && rm -rf /tmp/logstash.tar.gz

ADD ./logstash.conf /logstash.conf

ENTRYPOINT ["logstash", "-f", "/logstash.conf"]
