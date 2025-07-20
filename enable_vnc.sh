#!/bin/bash
sudo raspi-config nonint do_vnc 0
sudo systemctl enable vncserver-x11-serviced
sudo systemctl start vncserver-x11-serviced
