# update yum
yum update -y

# install docker & docker-compose
./../install_docker.sh

# config firewalld
./firewalld_config.sh

# load br_netfilter permanently & config bridge
./netfilter_bridge_config.sh

# disable swap
./disable_swap.sh

# install
./install_kubelet_kubeadm_kubectl.sh


