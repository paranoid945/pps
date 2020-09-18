prepare 3 node with 8g ram, 2 core cpu
10.1.1.131
10.1.1.132
10.1.1.133
disable firewalld if you don't want to config it: systemctl stop firewalld && systemctl disable firewalld
install docker
add your user to docker group so you don't have to sudo docker: sudo usermod -aG docker mingyu

prepare your own node with rke/kubectl installed
10.1.1.13x
generate ssh key pair if not exist
copy-ssh-id to 3 nodes(to none root user)
run install_rancher.sh(delete kube_config_xxx.yml and xxx.rkestate file before proceed)