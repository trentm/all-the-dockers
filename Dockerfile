FROM busybox
MAINTAINER trentm

COPY bin /opt/all-the-dockers/bin
ADD http://us-east.manta.joyent.com/trent.mick/public/all-the-dockers/docker-1.5.0 /opt/all-the-dockers/bin/docker-1.5.0
RUN /bin/chmod +x /opt/all-the-dockers/bin/docker-*
ENV PATH=/opt/all-the-dockers/bin:$PATH
#ENTRYPOINT /opt/all-the-dockers/bin/docker
CMD sh
