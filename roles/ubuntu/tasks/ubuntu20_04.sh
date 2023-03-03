#!/bin/bash

sudo apt-get update
sudo apt-get install apache2 -y
sudo systemctl start apache2
sudo systemctl enable apache2
sudo rm /var/www/html/index.html
sudo timedatectl set-timezone Africa/Lagos

echo "<h1>" >> index.html
echo "    Welcome fellow GAMERS 🎮!" >> index.html
echo "</h1>" >> index.html
echo "<p>" >> index.html
echo "    Currently serving gaming content from;" >> index.html
echo "</p>" >> index.html
echo '<h2 style="color:#E95420">UBUNTU FOCAL FOSSA</h2>' >> index.html
echo "<h2>$HOSTNAME</h2>" >> index.html

sudo mv index.html /var/www/html
sudo chown root:root /var/www/html/index.html