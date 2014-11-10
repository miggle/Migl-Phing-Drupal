# Migl phing
############
 
## Requirements

* ensure composer is installed and available globally

<code>curl -sS https://getcomposer.org/installer | php</code>

<code>mv composer.phar /usr/local/bin/composer</code>
      
* the following packages should be installed

<code>apt-get install php5 php5-cli php5-curl php5-gd sqlite3 libsqlite3-dev php5-sqlite php-pear</code>

* Install the following pear package

<code>pear install HTTP_Request2</code>

## Usage

To clone this repo and the migl-make sub-repo use the following: 

<code>git clone --recursive git@github.com:miggle/Migl-Phing-Drupal.git new-project</code>

Install dependencies

<code>cd new-project</code>

<code>composer install</code>

Run phing!!!

<code>bin/phing</code>