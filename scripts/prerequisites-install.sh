#! bin/bash

yum -y install httpd; yum clean all; systemctl enable httpd.service
yum -y install ca-certificates

echo "ca_directory=/etc/ssl/certs" >> /etc/wgetrc
yum -y install wget

echo "INSTALLING Java"
yum -y install java-1.8.0-openjdk