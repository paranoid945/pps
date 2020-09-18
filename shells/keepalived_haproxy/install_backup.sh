yum install -y keepalived haproxy
cp -rf haproxy.cfg /etc/haproxy/haproxy.cfg
cp -rf keepalived_master.conf /etc/keepalived/keepalived.conf
