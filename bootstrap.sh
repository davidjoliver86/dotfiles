#!/bin/bash
ANSIBLE_VERSION=2.7.9

apt update
apt install -y python3-apt python3-venv git
/usr/bin/python3 -m venv /usr/lib/virtualenvs/ansible --system-site-packages

/usr/lib/virtualenvs/ansible/bin/pip install ansible==${ANSIBLE_VERSION}

mkdir -p /etc/ansible
cat <<EOF > /etc/ansible/hosts
[local]
127.0.0.1 ansible_python_interpreter=/usr/lib/virtualenvs/ansible/bin/python
EOF
