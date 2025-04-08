#!/bin/bash
yum install httpd -y
service httpd start
chkconfig httpd on
echo "<h1>my cicdpipeline deployment server</h1>" > /var/www/html/index.html
