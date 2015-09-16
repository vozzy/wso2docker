FROM ubuntu:15.04
MAINTAINER Vernon Osborne <v.osborne.dev@gmail.com>
# add : add-apt-repository
RUN \
        apt-get update && apt-get install -y software-properties-common && \
        apt-get install -y unzip && apt-get update
# oracle java 7
RUN \
 echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
 add-apt-repository -y ppa:webupd8team/java && \
 apt-get update && \
 apt-get install -y oracle-java7-installer && \
 rm -rf /var/lib/apt/lists/* && \
 rm -rf /var/cache/oracle-jdk7-installer
ENV JAVA_HOME /usr/lib/jvm/java-7-oracle
ENV PATH $PATH:$JAVA_HOME/bin
RUN echo 'JAVA_HOME="/usr/lib/jvm/java-7-oracle"' >> /etc/environment
# download and add esb
RUN \
        mkdir -p /opt && \
        wget -P /opt --user-agent="testuser" --referer="http://connect.wso2.com/wso2/getform/reg/new_product_download" http://product-dist.wso2.com/products/enterprise-service-bus/4.8.1/wso2esb-4.8.1.zip && \ 
	unzip /opt/wso2esb-4.8.1.zip -d /opt && \
        rm /opt/wso2esb-4.8.1.zip
# expose ports (offset=o)
EXPOSE 9763 9443 8280 8243
CMD /bin/bash /opt/wso2esb-4.8.1/bin/wso2server.sh
