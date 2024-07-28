kubeadm reset -y
yum remove kubeadm kubectl kubelet kubernetes-cni kube* -y
yum autoremove -y
rm -rf ~/.kube
yum -y remove docker
rm -f /tmp/Dockerfile /tmp/authorized_keys
rm -f ~/custom-resources.yaml  tigera-operator.yaml
