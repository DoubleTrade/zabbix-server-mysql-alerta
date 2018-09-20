FROM zabbix/zabbix-server-mysql:centos-3.4.14

# Install SCL Release
RUN yum install centos-release-scl -y

# Install python 3.6 and Git
RUN yum install git rh-python36-python-pip -y

# Install zabbix-alerta
RUN /opt/rh/rh-python36/root/usr/bin/pip install pip --upgrade && \
    /opt/rh/rh-python36/root/usr/bin/pip install --no-cache-dir git+https://github.com/alerta/zabbix-alerta

RUN ln -s /opt/rh/rh-python36/root/usr/bin/zabbix-alerta /usr/bin/zabbix-alerta
