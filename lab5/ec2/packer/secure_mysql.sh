#!/bin/bash
mysql_secure_installation <<EOF

y
PUT_A_PASSWORD_HERE
PUT_A_PASSWORD_HERE
y
y
y
y
EOF
sudo systemctl restart mariadb
