# WSO2 API Manager 2.0.0

FROM chamantha/oracle-jdk

MAINTAINER Chamantha De Silva

RUN wget -P /opt https://github.com/wso2/product-apim/releases/download/v2.0.0/wso2am-2.0.0.zip && \
    unzip /opt/wso2am-2.0.0.zip -d /opt && \
    rm /opt/wso2am-2.0.0.zip

EXPOSE 9443 9763 8243 8280 10397 7711

ENTRYPOINT ["/opt/wso2am-2.0.0/bin/wso2server.sh"]

