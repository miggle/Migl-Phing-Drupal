# Migl phing
############
 
## Requirements

* ensure composer is installed and available globally

<code>curl -sS https://getcomposer.org/installer | php</code>

<code>sudo mv composer.phar /usr/local/bin/composer</code>
      
* the following packages should be installed

<code>sudo apt-get install php5 php5-cli php5-curl php5-gd sqlite3 libsqlite3-dev php5-sqlite php-pear nano zip</code>

* Install the following pear package

<code>pear install HTTP_Request2</code>

## Usage

To clone this repo: 

<code>git clone git@github.com:miggle/Migl-Phing-Drupal.git new-project</code>

Install dependencies

<code>cd new-project</code>

<code>composer install</code>

Run phing!!!

<code>bin/phing</code>