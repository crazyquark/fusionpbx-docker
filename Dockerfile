FROM crazyquark/centos:systemd

RUN yum install -y wget

RUN wget -O - https://raw.githubusercontent.com/fusionpbx/fusionpbx-install.sh/master/centos/pre-install.sh | sh

RUN cd /usr/src/fusionpbx-install.sh/centos && ./install.sh

COPY ./start-freeswitch.sh /usr/bin/start-freeswitch.sh

CMD ["/usr/bin/start-freeswitch.sh"]
