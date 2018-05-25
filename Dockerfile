FROM docker.io/centos

MAINTAINER Manish Kumar Singh

RUN yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
RUN yum install -y python-pip
RUN yum install -y pycrypto
RUN pip install 'ansible==2.3.1.0'
RUN yum install -y maven-3.0.5


LABEL OS="CentOS Linux release 7.5.1804 (Core)"
LABEL ansible="2.3.1.0"
LABEL java="java-1.8.0-openjdk.x86_64"
LABEL maven="3.0.5"
LABEL description="ansible, java, maven"

RUN yum clean all
RUN rm -rf /var/cache/yum

ENTRYPOINT /bin/bash"
