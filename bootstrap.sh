#!/usr/bin/bash

# Set the hostname
hostnamectl set-hostname dev-vm

# Install this first to shrink all further updates
yum -y install deltarpm

# Enable RPM Fusion
yum -y localinstall --nogpgcheck http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

yum -y update
