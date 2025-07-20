#!/bin/bash
echo "SSH status:"
sudo systemctl status ssh | grep Active
echo "VNC status:"
sudo systemctl status vncserver-x11-serviced | grep Active
echo "Samba status:"
sudo systemctl status smbd | grep Active
