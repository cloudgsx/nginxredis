#!/bin/sh

if [ ! -d /DATA/htdocs ] ; then
  mkdir -p /DATA/htdocs
#  chown nginx:nginx /DATA/htdocs
fi


# start php-fpm
php-fpm7.3
# start nginx
mkdir -p /DATA/logs/nginx
mkdir -p /tmp/nginx
nginx

if [ ! -d /DATA/bin ] ; then
  mkdir /DATA/bin
  curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
  chmod +x wp-cli.phar
  mv wp-cli.phar /DATA/bin/wp-cli
fi

while :; do echo 'Press <CTRL+C> to exit.'; sleep 1; done

