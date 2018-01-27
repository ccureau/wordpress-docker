FROM centos:7

RUN yum makecache fast && \
    yum -y update && \
    yum install -y epel-release && \
    yum install -y curl && \
    curl --silent --location https://raw.githubusercontent.com/iuscommunity/automation-examples/bash/enable-ius.sh | bash - && \
    curl --silent --location https://rpm.nodesource.com/setup_8.x | bash - && \
    yum install -y supervisor git2u && \
    yum clean all && \
    rm -rf /var/cache/yum

COPY files/supervisor/supervisord.conf /etc/supervisord.conf
COPY files/setup.sh /root/setup.sh

WORKDIR /root
CMD ["bash", "setup.sh"]

EXPOSE 3000
