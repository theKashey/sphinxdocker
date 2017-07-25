FROM ubuntu
ADD . /opt/searchd-docker
RUN /bin/sh /opt/searchd-docker/spin-up/run.sh
EXPOSE 9306
CMD searchd --nodetach "$@"