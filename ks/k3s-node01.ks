bootloader --location=mbr
zerombr
clearpart --all --initlabel
text
firewall --disable
firstboot --disable
keyboard gb
network --device eth0 --bootproto static --ip 192.168.0.21 --netmask 255.255.255.0 --gateway 192.168.0.1 --nameserver 8.8.8.8 --noipv6 --hostname k3s-node01
lang en_GB
logging --level=info
url --url=http://mirror.mhd.uk.as44574.net/mirror.centos.org/7.7.1908/os/x86_64/
reboot
selinux --disabled
skipx
timezone Europe/London
install
part / --fstype="xfs" --grow --size=1
user --name=tom --groups=wheel --iscrypted --password=$6$gAm2GgBXX6gIVIjt$kwggIN3nqhzz4eqMD69xky7eJnEHoaauAzRpUJOiqftbAyOms9coBobbomZ9arJA0v/9XzHp5wh6Jo49NUldS1
%packages
@core
%end
%post
yum update -y
echo "tom        ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers.d/tom
install -o tom -g tom -m 0700 -d ~tom/.ssh
umask 0077
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC9FNpoDiJLd+if9noTjimmiCfTi0BUa3uQFnUOf5PVLx+gT0+61j7+EOvvqdVN8pUI/+eNMJPqDvrPsKqe63QJkDboltJaY9m39KAPAVw/L8myLDsxcXprmLOtK8MlHc1FvGwsUeiZAZaEdt/KfOd/zkU/qd5xpQVk9ERO/H+o3T5ReuEV63vlSnF8mXvh5gFzJVLiTgMgGhYizg24Z894nalGx+rvPz1XWVhEqlZsQsdyXQsnUdoboSyVw1tcN3y87Tws8k72ZRMd5Yc9zs+5XN3Yj4DOtJzac0wvcFAVIetHMz2BWUbT5Ei9BDAjGerI+nr47p5CDetyqy82Ctwz tom@Thomass-MacBook-Pro.local" >~tom/.ssh/authorized_keys
chown tom:tom ~tom/.ssh/authorized_keys
tuned-adm profile virtual-guest
%end
