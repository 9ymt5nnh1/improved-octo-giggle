# Auto Renew SSL Script 
# Pleace Make Sure You're In Root User
# Update system
sudo apt update
# Upgrade system
sudo apt upgrade -y
# Open defult HTTP and HTTPs ports
sudo firewall-cmd --zone=public --permanent --add-port=80/tcp
sudo firewall-cmd --zone=public --permanent --add-port=443/tcp
# Reload firewall
sudo firewall-cmd --reload
# Renew CMD
sudo certbot renew
# Close Ports 
sudo firewall-cmd --remove-port=80/tcp
sudo firewall-cmd --remove-port=443/tcp
sudo firewall-cmd --runtime-to-permanent
sudo firewall-cmd --reload
# End