FROM maven:3-amazoncorretto-11
ARG VERSION="openjdk-11"

RUN yum install -y perl-XML-XPath shadow-utils curl unzip git && \
 amazon-linux-extras install -y docker && \
 yum install -y amazon-ecr-credential-helper && \
 yum clean all && rm -rf /var/cache/yum && \
 mkdir -p /root/.docker && \
 echo '{ "credsStore": "ecr-login" }' > /root/.docker/config.json
 