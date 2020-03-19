#!/bin/bash
echo "hello arun"
sudo su
yum update -y
yum install httpd -y


systemctl start httpd
