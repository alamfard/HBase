FROM centos:latest
MAINTAINER Vahid Alamfard alamfard@gmail.com

RUN yum update -y
RUN yum install -y wget java-1.8.0-openjdk.x86_64

RUN mkdir /data
WORKDIR /data

RUN mkdir /opt/hbase
RUN wget https://www-eu.apache.org/dist/hbase/stable/hbase-1.2.6-bin.tar.gz -qO- \
	| tar zxvf - -C /opt/hbase --strip 1

ENV JAVA_HOME /usr/lib/jvm/jre
ENV PATH /usr/lib/jvm/jre/bin:/opt/hbase/bin:$PATH

ADD conf/hbase-site.xml /opt/hbase/conf/hbase-site.xml

ADD start-hbase.sh /bin/start-hbase
RUN chmod a+x /bin/start-hbase
CMD ["start-hbase"]
