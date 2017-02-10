FROM vozzy:base-image
MAINTAINER Vernon Osborne <v.osborne.dev@gmail.com>
# download and add am
RUN \
	mkdir -p /opt && \
	wget -P /opt --user-agent="testuser" --referer="http://connect.wso2.com/wso2/getform/reg/new_product_download" 
		http://product-dist.wso2.com/products/api-manager/1.10.0/wso2am-1.10.0.zip && \
	unzip /opt/wso2am-1.10.0.zip -d /opt && \
	rm /opt/wso2am-1.10.0.zip
# expose ports (offset=1)
EXPOSE 9768 9448 8285 8248
CMD /bin/bash /opt/wso2am-1.10.0/bin/wso2server.sh -DportOffset=5