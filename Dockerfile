FROM centos:centos8

ARG MW_VERSION_MAJOR
ARG MW_VERSION_MINOR

RUN dnf -y update; \
    dnf -y install php-cli php-fpm php-mysqlnd php-gd php-xml php-mbstring php-json nginx; \
    curl -o /tmp/mediawiki.tar.gz https://releases.wikimedia.org/mediawiki/${MW_VERSION_MAJOR}/mediawiki-${MW_VERSION_MAJOR}.${MW_VERSION_MINOR}.tar.gz; \
    tar -C /usr/share/nginx/html --strip 1 -zxf /tmp/mediawiki.tar.gz; \
    mkdir -p /run/php-fpm; \
    chown -R nginx.nginx /usr/share/nginx/html/*

EXPOSE 80
EXPOSE 9000
