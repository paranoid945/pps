# disable swap
swapoff -a
# comment out swap line in fstab(according your env)
sed -e 's/^\/dev\/mapper\/centos_bogon-swap/#&/' -i /etc/fstab