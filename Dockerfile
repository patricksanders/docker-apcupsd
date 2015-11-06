FROM remonlam/rpi-rasbian:jessie
MAINTAINER Remon Lam <remon.lam@virtualclouds.info>

RUN apt-get update && apt-get install -y wget
RUN wget -P /tmp https://raw.githubusercontent.com/remonlam/rpi-docker-apcups/master/install.sh
RUN wget -P / https://raw.githubusercontent.com/remonlam/rpi-docker-apcups/master/entrypoint.sh
RUN chmod 755 /./entrypoint.sh
RUN chmod 755 /tmp/./install.sh
RUN /tmp/./install.sh

CMD /./entrypoint.sh

EXPOSE 80
