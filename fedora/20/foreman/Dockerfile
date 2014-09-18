FROM elobato/apache
MAINTAINER Daniel Lobato <dlobatog@redhat.com>
ADD ./dependencies.sh /opt/dependencies.sh
ADD ./install.sh /opt/install.sh
ADD ./start.sh /opt/start.sh
RUN bash /opt/dependencies.sh
RUN bash /opt/install.sh 1.6.0
EXPOSE 3000
ENTRYPOINT bash /opt/start.sh
