# Migl Starter Project
######################
 
## Requirements

* Virtual Box
* Vagrant
* Ansible

see http://vlad-docs.readthedocs.org/en/latest/usage/installation for full requirements
 
## Setup
git clone -b dev --recursive git@github.com:miggle/Migl-Phing-Drupal.git my_project
 
<code>cd vlad</code>

<code>vagrant up</code>



## Build tools setup

* ensure composer is installed and available globally

<code>curl -sS https://getcomposer.org/installer | php</code>

<code>sudo mv composer.phar /usr/local/bin/composer</code>

<code>composer install</code>