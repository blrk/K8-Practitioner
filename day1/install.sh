yum install tcpdump net-tools wget git -y
mkdir /root/packages && cd /root/packages
wget https://github.com/etcd-io/etcd/releases/download/v3.5.4/etcd-v3.5.4-linux-amd64.tar.gz 
tar -xzvf etcd-v3.5.4-linux-amd64.tar.gz
cd etcd-v3.5.4-linux-amd64
cp etcd etcdctl /usr/local/bin/
wget https://dl.k8s.io/v1.24.2/kubernetes-server-linux-amd64.tar.gz
tar -xzvf kubernetes-server-linux-amd64.tar.gz
cd /root/packages/kubernetes/server/bin
cp kube-apiserver kubectl /usr/local/bin/
