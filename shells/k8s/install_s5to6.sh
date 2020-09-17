./install_common.sh


# prepare config for keepalived and haproxy
mkdir -p /etc/keepalived/
mkdir -p /etc/haproxy/
cp check_apiserver.sh /etc/keepalived/
cp keepalived_backup.conf /etc/keepalived/keepalived.conf
cp haproxy.cfg /etc/haproxy/
cp keepalived.yaml /etc/kubernetes/manifests/
cp haproxy.yaml /etc/kubernetes/manifests/