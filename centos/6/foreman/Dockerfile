FROM centos:centos6
MAINTAINER Daniel Lobato <elobatocs@gmail.com>
RUN yum -y update
RUN yum -y install http://yum.theforeman.org/releases/1.6/el6/x86_64/foreman-release.rpm
RUN yum -y install http://dl.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
RUN yum -y install centos-release-SCL
RUN yum -y install foreman; yum clean all
ADD ./install.sh /opt/install.sh
ADD ./additions.sh /opt/additions.sh
ADD database.yml /usr/share/foreman/config/
RUN bash /opt/additions.sh
EXPOSE 3000
WORKDIR /usr/share/foreman
ENV RAILS_ENV production
CMD [ "bash", "/opt/install.sh" ]
