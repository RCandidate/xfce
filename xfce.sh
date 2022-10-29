#!/bin/bash
# Script to install XFCE onto
# Rocky Linux, AlmaLinux, RHEL, Fedora
echo "----------------------------------"
echo "Current system:"
uname -a
# display user home
echo "Home for the current user is: $HOME"
echo "Current user:"
whoami
echo "----------------------------------"
echo "CTAPT yCTAHOBKu XFCE"

dnf -y install epel-release
dnf --enablerepo=epel group
sudo dnf config-manager --set-enabled powertools
dnf repolist
dnf group list
dnf groupinstall "Xfce" "base-x" -y
echo "exec /usr/bin/xfce4-session" >> ~/.xinitrc
systemctl set-default graphical