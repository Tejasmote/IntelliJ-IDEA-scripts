#!/bin/bash

echo "Downloading..."
sudo apt install wget
wget https://download-cdn.jetbrains.com/idea/ideaIC-2021.1.2.tar.gz
echo "Downloading Completed..."

echo "Installation Started..."
sudo tar -xvf ideaIC-2021.1.2.tar.gz -C /opt/
sudo mv /opt/idea-IC-211.7442.40 /opt/idea
sudo ln -s /opt/idea/bin/idea.sh /usr/bin/idea
sudo mv idea.desktop /usr/share/applications/
sudo desktop-file-install /usr/share/applications/idea.desktop
echo "Installation Completed..."

echo "Creating Backup..."
mkdir Backup
cp ideaIC-2021.1.2.tar.gz Backup/
cp backup.sh Backup/
cp idea.desktop Backup/
cp backup-install.txt Backup/
tar -cvf Backup.tar Backup
gzip -v Backup.tar
echo "Completed Backup"
