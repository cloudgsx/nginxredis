![Image of Nginx](https://cdn.openbridge.com/assets/images/openbridge-nginx-small.png)

# This is an edit of the original git repo https://github.com/openbridge/nginx
This is a conversion of the existing repo which has been adapted to use ubuntu lts with php 7.3 and nginx 1.17
It's been also tweaked to use  TLSv1.2 TLSv1.3 and to comply with https://www.ssllabs.com/ssltest/

FPM configuration has been also modified to listen on the local IP and port insted of the sock which helps while using this image in Kubernetes or Openshift.
Also, the entrypoint has been changed to run.sh which used /DATA as a volume which can be used as persistent storage

As per the redis cache, it points to an external redis post in K8s which has a service created

Finally, the standard nginx.conf file has all the necessary parametes to support a wordpress installation.

# NGINX Accelerated including Reverse Proxy, Redis, CDN, Lets Encrypt and much more!
This is a Docker image creates a high performance, optimized image for NGINX. Deliver sites and applications with performance, reliability, security, and scale. This NGINX server offers advanced performance, web and mobile acceleration, security controls, application monitoring, and management.

## Features

The image includes configuration enhancements for;
* TLSv1.2 TLSv1.3
* PHP 7.3 with fpm
* Can use persistent volumes in k8s
* Wordpress ready
* Reverse Proxy
* SEO optimizations
* Customizable configurations
* SSL with support for Lets Encrypt SSL certificates
* Mime-type based caching
* Redis LRU cache
* Fastcgi cache
* Proxy cache
* tmpfs file cache
* Brotli and Gzip compression
* Redirects for moved content
* [Security & Bot Protection](https://github.com/mitchellkrogza/nginx-ultimate-bad-bot-blocker)
* Monitoring processes, ports, permissions... with Monit
* Standardized UID/GID and Permissions (www-data)
* Support GeoIP
* Rate limited connections to slow down attackers
* CDN support
* Cache purge

There are many, many other benefits to this system. Give it a try!

# Getting Started


## Install
The first step is to build the image:

### Build
```docker
docker build -t nginxredis .
```

## Running

Via Docker compose
```
docker-compose up -d
```
