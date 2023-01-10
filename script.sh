#!/bin/sh
sudo cd /etc/yum.repos.d/
sudo sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
sudo sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
sudo yum update -y
sudo yum install docker -y
sudo docker pull dperson/samba | docker.io/dperson/samba:latest
#docker run -it -p 139:139 -p 445:445 --name samba -v /tmp/samba/:/mount/samba -d dperson/samba -u "laerte;1234"