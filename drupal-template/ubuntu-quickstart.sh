#!/bin/bash

# add repo key for jenkins
wget -q -O - https://jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -

# add repo to sources
sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list'

# update packages
apt-get update

echo "installing packages..."

# install required packages
apt-get -y install jenkins php5 php5-cli php5-curl php5-gd sqlite3 libsqlite3-dev php5-sqlite mysql-server php5-mysql apache2 php-pear git zip nano

# start jenkins
service jenkins start

# add PEAR package that doesnt fit with Composer dependency management :(
pear install HTTP_Request2

echo "installing composer..."
# install composer
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer
composer

echo "retrieve jenkins CLI and install plugins..."
# install jenkins CLI
wget http://localhost:8080/jnlpJars/jenkins-cli.jar
# install required jenkins plugins
java -jar jenkins-cli.jar -s http://localhost:8080 install-plugin phing php github

echo "download jenkins drupal-template..."
# setup jenkins template
mkdir /var/lib/jenkins/jobs/drupal-template
cd /var/lib/jenkins/jobs/drupal-template
wget https://raw.githubusercontent.com/miggle/Migl-Phing-Drupal/master/drupal-template/config.xml
chown -Rf jenkins:jenkins /var/lib/jenkins/jobs/drupal-template

# restart jenkins
cd /root
java -jar jenkins-cli.jar -s http://localhost:8080 safe-restart

echo "you all setup!!";