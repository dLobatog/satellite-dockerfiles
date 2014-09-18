FROM systemd_rhel7
MAINTAINER Brad Buckingham (bbuckingham@redhat.com)

ENV container docker

RUN yum install -y elasticsearch && yum clean all
RUN systemctl enable elasticsearch.service
EXPOSE 9200

