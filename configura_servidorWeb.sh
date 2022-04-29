#!/bin/bash
apt-get update
apt-get upgrade -y

apt-get install apache2 -y

apt-get install wget -y

wget https://gist.github.com/nunomazer/873219/archive/690e1f604dc8ead2583589e1aee6f8a42040a035.zip

apt-get install zip -y
apt-get install unzip -y

unzip 690e1f604dc8ead2583589e1aee6f8a42040a035.zip

cp p1/873219-690e1f604dc8ead2583589e1aee6f8a42040a035/cv-resumido.html /var/www/html/cv-resumido.html

cp p1/873219-690e1f604dc8ead2583589e1aee6f8a42040a035/style.css /var/www/html/style.css

rm /var/www/html/index.html

mv /var/www/html/cv-resumido.html  /var/www/html/index.html

/etc/init.d/apache2 start
