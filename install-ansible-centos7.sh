
#!/bin/bash


###installation d'ansible sous centos 7###


systemctl stop firewalld
systemctl disable firewalld

yum update -y && yum install -y epel-release

yum install -y ansible

echo "
@
@
@
@
@  $(ansible --version) "fin de l'installation"

