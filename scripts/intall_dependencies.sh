#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo “Hello from server-2 in ${AWS::Region}” > /var/www/html/index.html