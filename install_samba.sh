#!/bin/bash
sudo apt update
sudo apt install samba -y
sudo cp /etc/samba/smb.conf /etc/samba/smb.conf.bak
sudo bash -c 'cat >> /etc/samba/smb.conf' <<EOF

[louis-share]
   path = /home/louis
   writeable = yes
   browseable = yes
   guest ok = no
EOF
sudo systemctl restart smbd
sudo smbpasswd -a louis
