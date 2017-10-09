# TenantCloud docker Container

## Install Docker

Install on [Mac OS](https://docs.docker.com/docker-for-mac/install/#download-docker-for-mac), [Linux](https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/) or [Windows](https://docs.docker.com/docker-for-windows/install/)

## Evironment

MySQL Server

```
user: root
password: root
```


## Run container

Run as Daemon:
```
docker run -d -p 80:80 -p 443:443 -p 1080:1080 -p 3306:3306 -p 6001:6001 -p 6379:6379 -p 9000:9000 -p 9090:9090 -v /home/user/tenant:/var/www/tenantcloud --name tenant ukietech/tenantcloud
```

Run and delete after exit:
```
docker run -it --rm -p 80:80 -p 443:443 -p 1080:1080 -p 3306:3306 -p 6001:6001 -p 6379:6379 -p 9000:9000 -p 9090:9090 -v /home/user/tenant:/var/www/tenantcloud --name tenant ukietech/tenantcloud
```

## Ports

- 80 HTTP
- 443 HTTPS
- 1080 Mailcatcher
- 3306 MySQL
- 6001, 6379 Redis
- 9000 PHP FPM
- 9090 Supervisor

## Environment

Nginx resolved two virtual hosts `*.tenancloud.l` and `*.seleniumtc.l`

Certificate for .env file
```
/etc/nginx/ssl/seleniumtc.l/ssl.crt
/etc/nginx/ssl/seleniumtc.l/ssl.key

/etc/nginx/ssl/tenantcloud.l/ssl.crt
/etc/nginx/ssl/tenantcloud.l/ssl.key
```

## Bugs

After start container You must open container

```
docker exec -it tenant bash
```

and restart Redis server and PHP FPM:

```
service php7.1-fpm restart && service redis-server restart
```

