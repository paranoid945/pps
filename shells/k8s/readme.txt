prerequisite:
we have 6 virtual machine, s1 to s6
s1 10.0.0.101 vcpu x2 ram x6g worker node
s2 10.0.0.102 vcpu x2 ram x6g worker node
s3 10.0.0.103 vcpu x2 ram x6g worker node
s4 10.0.0.104 vcpu x2 ram x2g master node
s5 10.0.0.105 vcpu x2 ram x2g master node
s6 10.0.0.106 vcpu x2 ram x2g master node

optional: if disable_swap.sh couldn't comment out your swap line in fstab, change accordingly with your env.

init control plane from s4:

sudo kubeadm init --control-plane-endpoint "10.0.0.199:8443" --upload-certs --apiserver-cert-extra-sans "192.168.1.199"

# switch to normal user and config kubectl()
su - mingyu
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
echo "source (kubectl completion bash)" >> ~/.bashrc

# apply calico network
kubectl apply -f https://docs.projectcalico.org/v3.15/manifests/calico.yaml

# join control plane from s5 and s6 (you may want to add --ignore-preflight-errors=DirAvailable--etc-kubernetes-manifests)

# join master from s1 to s3 
