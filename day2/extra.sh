* Custom not required
``` bash
curl https://raw.githubusercontent.com/projectcalico/calico/v3.27.2/manifests/calico.yaml -O
sed -i -e 's/192.168.0.0/10.244.0.0/g' calico.yaml 
sed -i -e 's/# - name: CALICO_IPV4POOL_CIDR/- name: CALICO_IPV4POOL_CIDR/' calico.yaml
sed -i '/#   value: "10\.244\.0\.0\/16"/ s/^ *# *//' calico.yaml
sed -i '/^value: "10\.244\.0\.0\/16"/ s/^/              /' calico.yaml 
```