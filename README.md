# scotts-apache
Our database user named Scott continues his journey with Docker. Today he builds an image to run an apache webserver in Fedora.

## Setup

To get ready create a folder in your working directory. You can name it apache or whatever makes sense to you.

```
mkdir apache
cd apache
```

## Dockerfile
Use a Dockerfile as a basic template to build a Fedora image to run apache et al.

```
FROM fedora:latest
RUN dnf -y update && dnf -y install httpd git && dnf clean all

ENTRYPOINT /usr/sbin/httpd -DFOREGROUND

```
## Commands
Run the following from the command line within the directory that you created named apache

```
# docker build --rm -t testsite httpd/
# docker build --rm -t myhttp .

```

Get into the container after it is running

```
$ docker ps -a // grab the-ID
$ docker exec -u 0 -it [the-ID] /bin/sh
```

Here you can create your own web page.

```
docker exec -u 0 -it 00ce5c725f21 /bin/sh
sh-5.2# history
    1  cd /var/www/html/
    2  ls -l
    3  vi index.html
    4  exit
    5  history
sh-5.2# 

```

Next time we will will load the web page with the Dockerfile :)



