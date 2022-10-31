sudo apt update -y
sudo apt install apache2
sudo systemctl start apache2.service
sudo systemctl enable apache2.service
tar -cvf /tmp/Rahul-httpd-$(date '+%d%m%Y-%H%M%S').tar /var/log/apache2/
sudo apt update
sudo apt install awscli
aws s3 cp /tmp/Rahul-httpd-30102022-115023.tar  \s3://upgrad-rahul/rahul-httpd-$(date '+%d%m%Y-%H%M%S').tar
