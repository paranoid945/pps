yum install -y keepalived haproxy
cp -rf haproxy.cfg /etc/haproxy/haproxy.cfg
cp -rf keepalived_backup.conf /etc/keepalived/keepalived.conf
systemctl restart haproxy
systemctl restart keepalived
