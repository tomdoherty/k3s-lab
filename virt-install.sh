virt-install \
  --name k3s-master01 \
  --ram 4096 \
  --disk size=10 \
  --quiet \
  --noautoconsole \
  --autostart \
  --virt-type kvm \
  --vcpus 1 \
  --os-type linux \
  --os-variant rhel7.7 \
  --network bridge=bridge0 \
  --graphics none \
  --initrd-inject ./ks/k3s-master01.ks \
  --location 'http://mirror.mhd.uk.as44574.net/mirror.centos.org/7.7.1908/os/x86_64/' \
  --extra-args 'console=ttyS0,115200n8 ks=file:/k3s-master01.ks ksdevice=eth0 ip=192.168.0.20 netmask=255.255.255.0 nameserver=8.8.8.8 gateway=192.168.0.1' &

virt-install \
  --name k3s-node01 \
  --ram 4096 \
  --disk size=10 \
  --quiet \
  --noautoconsole \
  --autostart \
  --virt-type kvm \
  --vcpus 1 \
  --os-type linux \
  --os-variant rhel7.7 \
  --network bridge=bridge0 \
  --graphics none \
  --initrd-inject ./ks/k3s-node01.ks \
  --location 'http://mirror.mhd.uk.as44574.net/mirror.centos.org/7.7.1908/os/x86_64/' \
  --extra-args 'console=ttyS0,115200n8 ks=file:/k3s-node01.ks ksdevice=eth0 ip=192.168.0.21 netmask=255.255.255.0 nameserver=8.8.8.8 gateway=192.168.0.1' &


virt-install \
  --name k3s-node02 \
  --ram 4096 \
  --disk size=10 \
  --quiet \
  --noautoconsole \
  --autostart \
  --virt-type kvm \
  --vcpus 1 \
  --os-type linux \
  --os-variant rhel7.7 \
  --network bridge=bridge0 \
  --graphics none \
  --initrd-inject ./ks/k3s-node02.ks \
  --location 'http://mirror.mhd.uk.as44574.net/mirror.centos.org/7.7.1908/os/x86_64/' \
  --extra-args 'console=ttyS0,115200n8 ks=file:/k3s-node02.ks ksdevice=eth0 ip=192.168.0.22 netmask=255.255.255.0 nameserver=8.8.8.8 gateway=192.168.0.1' &

virt-install \
  --name k3s-node03 \
  --ram 4096 \
  --disk size=10 \
  --quiet \
  --noautoconsole \
  --autostart \
  --virt-type kvm \
  --vcpus 1 \
  --os-type linux \
  --os-variant rhel7.7 \
  --network bridge=bridge0 \
  --graphics none \
  --initrd-inject ./ks/k3s-node03.ks \
  --location 'http://mirror.mhd.uk.as44574.net/mirror.centos.org/7.7.1908/os/x86_64/' \
  --extra-args 'console=ttyS0,115200n8 ks=file:/k3s-node03.ks ksdevice=eth0 ip=192.168.0.23 netmask=255.255.255.0 nameserver=8.8.8.8 gateway=192.168.0.1' &
