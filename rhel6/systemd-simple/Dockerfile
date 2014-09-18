FROM registry1.cloud.lab.eng.bos.redhat.com:5000/rhel7
MAINTAINER "Alex Wood <awood@redhat.com>"
ENV container docker
RUN yum swap -y -- remove fakesystemd -- install systemd systemd-libs
RUN yum -y install httpd
RUN (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == systemd-tmpfiles-setup.service ] || rm -f $i; done); \                              
rm -f /lib/systemd/system/multi-user.target.wants/*;\
rm -f /etc/systemd/system/*.wants/*;\
rm -f /lib/systemd/system/local-fs.target.wants/*; \
rm -f /lib/systemd/system/sockets.target.wants/*udev*; \
rm -f /lib/systemd/system/sockets.target.wants/*initctl*; \
rm -f /lib/systemd/system/basic.target.wants/*;\
rm -f /lib/systemd/system/anaconda.target.wants/*;
RUN systemctl enable httpd
VOLUME ["/sys/fs/cgroup"]
EXPOSE 80
CMD ["/usr/sbin/init"]
