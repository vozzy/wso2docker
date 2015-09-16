FROM ubuntu:15.04
MAINTAINER Vernon Osborne <v.osborne.dev@gmail.com>
# add : add-apt-repository
RUN apt-get update && apt-get install -y software-properties-common  && apt-get$
# java
RUN \
 echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | $
 add-apt-repository -y ppa:webupd8team/java && \
 apt-get update && \
 apt-get install -y oracle-java7-installer && \
 rm -rf /var/lib/apt/lists/* && \
 rm -rf /var/cache/oracle-jdk7-installer
ENV JAVA_HOME /usr/lib/jvm/java-7-oracle
ENV PATH $PATH:$JAVA_HOME/bin
RUN echo 'JAVA_HOME="/usr/lib/jvm/java-7-oracle"' >> /etc/environment
# dowload and add esb
RUN \ 
	mkdir -p /opt && \ 
	wget -P /opt http://dist.wso2.org/maven2/org/wso2/esb/wso2esb/4.8.0/wso2esb-4.8.0.zip && \ 
	unzip /opt/wso2esb-4.8.1.zip -d /opt && \ 
	rm /opt/wso2esb-4.8.0.zip
# expose ports (offset=o)
EXPOSE 9763 9443 8280 8243
CMD /bin/bash /home/wso2_servers/wso2esb-4.8.1/bin/wso2server.sh
