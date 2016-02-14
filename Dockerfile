FROM centos
MAINTAINER William Caban <william.caban@gmail.com>
LABEL version="0.1.1"
LABEL version="latest"

ADD setupflaskrcloud.sh /
ADD runflaskrcloud.sh /

RUN yum -y install python-virtualenv git gcc
RUN /setupflaskrcloud.sh
RUN yum clean all

EXPOSE 5000

ENV POD_SETTINGS /opt/flaskrcloud/config/pod.ini
VOLUME /opt/flaskrcloud/config

ENTRYPOINT ["/runflaskrcloud.sh"]
