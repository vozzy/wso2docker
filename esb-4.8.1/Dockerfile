FROM ubuntu:15.04
MAINTAINER Vernon Osborne <v.osborne.dev@gmail.com>
# add : add-apt-repository
RUN \
        apt-get update && apt-get install -y software-properties-common && \
        apt-get install -y unzip && apt-get update
# oracle java 8
RUN echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | debconf-set-selections
RUN echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" > /etc/apt/sources.list.d/webupd8team-java-trusty.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --force-yes --no-install-recommends oracle-java8-installer && apt-get clean all
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle
ENV PATH $PATH:$JAVA_HOME/bin
RUN echo 'JAVA_HOME="/usr/lib/jvm/java-8-oracle"' >> /etc/environment
# download and add esb
RUN \
        mkdir -p /opt && \
        wget -P /opt --user-agent="testuser" --referer="http://connect.wso2.com/wso2/getform/reg/new_product_download" http://product-dist.wso2.com/products/enterprise-service-bus/4.9.0/wso2esb-4.9.0.zip && \ 
	unzip /opt/wso2esb-4.9.0.zip -d /opt && \
        rm /opt/wso2esb-4.9.0.zip
# expose ports (offset=o)
EXPOSE 9763 9443 8280 8243
CMD /bin/bash /opt/wso2esb-4.9.0/bin/wso2server.sh


## JAVA INSTALLATION
RUN echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | debconf-set-selections
RUN echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" > /etc/apt/sources.list.d/webupd8team-java-trusty.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --force-yes --no-install-recommends oracle-java8-installer && apt-get clean all
