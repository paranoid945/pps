# load br_netfilter permanently
modprobe br_netfilter
echo “br_netfilter” > /etc/modules-load.d/br_netfilter.conf

# some config
cat <<EOF | sudo tee /etc/sysctl.d/k8s.conf
net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables = 1
EOF
sudo sysctl --system