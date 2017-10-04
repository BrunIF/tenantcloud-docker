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
```docker run -it --rm -p 80:80 -p 443:443 -p 3306:3306 -p 6001:6001 -v ~/Projects/tenant:/var/www/tenantcloud --name tenant ukietech/tenantcloud```


