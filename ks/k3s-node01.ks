bootloader --location=mbr
zerombr
clearpart --all --initlabel
text
firewall --disable
firstboot --disable
keyboard gb
network --device eth0 --bootproto static --ip 192.168.0.101 --netmask 255.255.255.0 --gateway 192.168.0.1 --nameserver 8.8.8.8 --noipv6 --hostname k3-node01
lang en_GB
logging --level=info
url --url=http://mirror.mhd.uk.as44574.net/mirror.centos.org/7.7.1908/os/x86_64/
reboot
selinux --disabled
skipx
timezone Europe/London
install
part / --fstype="xfs" --grow --size=1
part swap --recommended
user --name=tom --groups=wheel --iscrypted --password=$6$gAm2GgBXX6gIVIjt$QLAaWIq2aXJPiQh2KzZ54K4G/xKgSTrPXWZJDQwXZR0nbquUBxW.UABp75kC0dD4ZmzjJm60/yX/ojs6rIWst1
%packages
@core
%end
