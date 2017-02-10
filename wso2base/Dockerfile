FROM ubuntu:14.04
MAINTAINER Vernon Osborne <v.osborne.dev@gmail.com>
# ADD : UNZIP
RUN \
	apt-get update && apt-get install -y software-properties-common && \
	apt-get install -y unzip && apt-get update
# ORACLE JAVA 8
RUN \
	echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
	add-apt-repository -y ppa:webupd8team/java && \
	apt-get update && \
	apt-get install -y oracle-java8-installer && \
	rm -rf /var/lib/apt/lists/* && \
	rm -rf /var/cache/oracle-jdk8-installer
# JAVA_HOME
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle
ENV PATH $PATH:$JAVA_HOME/bin
RUN echo 'JAVA_HOME="/usr/lib/jvm/java-8-oracle"' >> /etc/environment
