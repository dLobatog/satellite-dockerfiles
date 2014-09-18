FROM centos:centos6
MAINTAINER Foreman Project <foreman@theforeman.org>
RUN yum -y update
RUN yum -y install http://yum.theforeman.org/releases/1.6/el6/x86_64/foreman-release.rpm
RUN yum -y install http://dl.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
RUN yum -y install centos-release-SCL
RUN yum -y install foreman foreman-sqlite; yum clean all
RUN foreman-rake db:migrate
RUN foreman-rake db:seed
RUN foreman-rake permissions:reset username=admin password=changeme
EXPOSE 3000
WORKDIR /usr/share/foreman
ENV RAILS_ENV production
CMD [ "ruby193-rails", "s" ]

