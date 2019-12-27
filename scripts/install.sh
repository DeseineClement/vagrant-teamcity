#!/bin/bash

sudo pacman -Syu jre-openjdk jdk-openjdk wget --noconfirm;
mkdir -p /var/www/ /opt/teamcity
wget https://download-cf.jetbrains.com/teamcity/TeamCity-2019.2.tar.gz -O /opt/teamcity/TeamCity-2019.2.tar.gz --quiet
tar -xf /opt/teamcity/TeamCity-2019.2.tar.gz