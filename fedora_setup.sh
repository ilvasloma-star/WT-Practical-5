#!/bin/bash

sudo dnf update -y
sudo dnf install java-17-openjdk java-17-openjdk-devel -y
sudo dnf install tomcat tomcat-webapps tomcat-admin-webapps -y
sudo dnf install mysql-server -y
sudo dnf install wget -y

sudo systemctl start mysqld
sudo systemctl enable mysqld

sudo systemctl start tomcat
sudo systemctl enable tomcat

echo "Fedora setup complete"
