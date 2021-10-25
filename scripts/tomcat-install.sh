#!/bin/bash

echo "INSTALLING & CONFGURING Tomcat"

groupadd tomcat
useradd -M -s /bin/nologin -g tomcat -d /opt/tomcat tomcat

wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.54/bin/apache-tomcat-9.0.54.tar.gz

cd /
mkdir /opt/tomcat

# unpacking tomcat & installing it to /top/tomcat
tar xvf apache-tomcat-9*tar.gz -C /opt/tomcat --strip-components=1
cd /opt/tomcat

chgrp -R tomcat /opt/tomcat
chmod -R g+r conf
chmod g+x conf
chown -R tomcat webapps/ work/ temp/ logs/

# cp tomcat.service to systemd
cp /scripts/tomcat.service /etc/systemd/system