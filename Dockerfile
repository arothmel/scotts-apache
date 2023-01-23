FROM fedora:latest
RUN dnf -y update && dnf -y install httpd git  && dnf clean all

ENTRYPOINT /usr/sbin/httpd -DFOREGROUND
