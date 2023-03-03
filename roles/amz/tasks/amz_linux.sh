#!/bin/bash

sudo yum update -y
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd
sudo rm /var/www/html/index.html
echo "Africa/Lagos" | sudo tee /etc/timezone
sudo dpkg-reconfigure --frontend noninteractive tzdata

echo "<h1>" >> index.html
echo "    Welcome fellow GAMERS 🎮!" >> index.html
echo "</h1>" >> index.html
echo "<p>" >> index.html
echo "    Currently serving gaming content from;" >> index.html
echo "</p>" >> index.html
echo '<h2 style="color:#FF9900">AMAZON LINUX 2</h2>' >> index.html
echo "<h2>$HOSTNAME</h2>" >> index.html

sudo mv index.html /var/www/html
sudo chown root:root /var/www/html/index.html