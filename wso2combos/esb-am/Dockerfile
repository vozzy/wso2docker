LABEL maintainer "v.osborne.dev@gmail.com"
# -----------------------
FROM vozzy/wso2base:latest
# arguments
ARG AM_VERSION
ARG ESB_VERSION
# carbon server versions
ENV AM_VERSION=${AM_VERSION:-4.9.0}
		ESB_VERSION=${ESB_VERSION:-1.10.0}
# copy files
COPY resources /opt/resources
COPY run.sh /opt/scripts
# unzip am
RUN \
	unzip /opt/resources/wso2am-$AM_VERSION.zip -d /opt && \
	rm /opt/resources/wso2am-$AM_VERSION.zip
# unzip esb
RUN \
	unzip /opt/resources/wso2esb-$ESB_VERSION.zip -d /opt && \
	rm /opt/resources/wso2esb-$ESB_VERSION.zip
# run script
# expose ports (offset=o)
EXPOSE 9763 9443 8280 8243 9773 9453 8290 8253
CMD /bin/bash /opt/scripts/run.sh start
