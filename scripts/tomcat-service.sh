#! bin/bash

systemctl daemon-reload
systemctl start tomcat
systemctl enable tomcat