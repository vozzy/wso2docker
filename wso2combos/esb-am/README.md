

From Ubuntu:14.04

Oracle JKD - JAVA_HOME set
WSO2 API Manager and Enterprise Service Bus:
  Due to the large combined size of the products they will not be downloaded as part of this Dockerfile , please add them both into the {resources} directory. For example if the repo is installed to /home/user/repos/wso2docker , add the zip file distributions into a directory named resources (/home/user/repos/wso2docker/wso2combos/{combo-name}/resources)

Port offset = 1 , Exposed ports = 9764 9444 8281 8244
Run example : docker run -d -p [hostip]:9444:9444 -p 9764:9764 9444:9444 8281:8281 8244:8244 vozzy/wso2am
Mgnt console : https://[hostip]:9444/carbon
API Store : http://[hostip]:9764/store
API Publisher : http://[hostip]:9764/publisher
