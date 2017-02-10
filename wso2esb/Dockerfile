FROM vozzy:base-image
MAINTAINER Vernon Osborne <v.osborne.dev@gmail.com>
# download and add esb
RUN \
	mkdir -p /opt && \
	wget -P /opt --user-agent="testuser" --referer="http://connect.wso2.com/wso2/getform/reg/new_product_download" \
		http://product-dist.wso2.com/products/enterprise-service-bus/4.9.0/wso2esb-4.9.0.zip && \ 
	unzip /opt/wso2esb-4.9.0.zip -d /opt && \
	rm /opt/wso2esb-4.9.0.zip
# expose ports (offset=o)
EXPOSE 9763 9443 8280 8243
CMD /bin/bash /opt/wso2esb-4.9.0/bin/wso2server.sh