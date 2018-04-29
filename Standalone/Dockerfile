FROM alpine:latest
MAINTAINER Vahid Alamfard alamfard@gmail.com

RUN apk add --no-cache bash openjdk8-jre-base
ENV JAVA_HOME /usr

RUN mkdir /data
WORKDIR /data

RUN mkdir -p /opt/hbase && \
    apk add --no-cache wget tar && \
    wget http://www-us.apache.org/dist/hbase/stable/hbase-1.2.6-bin.tar.gz -qO- | \
	  tar zxvf - -C /opt/hbase --strip 1 && \
		rm -rf /opt/hbase/docs && \
		apk del tar wget

ENV PATH /usr/lib/jvm/jre/bin:/opt/hbase/bin:$PATH

COPY conf/hbase-site.xml /opt/hbase/conf/hbase-site.xml

COPY entrypoint.sh /
CMD "/entrypoint.sh"
