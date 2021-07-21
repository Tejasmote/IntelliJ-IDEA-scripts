#!/bin/bash

echo "Backup Installation Started..."
sudo tar -xvf ideaIC-2021.1.2.tar.gz -C /opt/
sudo mv /opt/idea-IC-211.7442.40 /opt/idea
sudo ln -s /opt/idea/bin/idea.sh /usr/bin/idea
sudo mv idea.desktop /usr/share/applications/
sudo desktop-file-install /usr/share/applications/idea.desktop
echo "Backup Installation Completed"
