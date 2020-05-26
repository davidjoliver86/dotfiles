#!/bin/bash
apt update
apt install -y python3-apt python3-venv python3-psutil git aptitude
/usr/bin/python3 -m venv /usr/lib/virtualenvs/ansible --system-site-packages

/usr/lib/virtualenvs/ansible/bin/pip install ansible

mkdir -p /etc/ansible
cat <<EOF > /etc/ansible/hosts
[local]
127.0.0.1 ansible_python_interpreter=/usr/lib/virtualenvs/ansible/bin/python
EOF
