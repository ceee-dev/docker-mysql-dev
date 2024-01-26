# Docker MySQL8 Development Enviorenment

## Install `docker` on your host system

```bash
curl -fsSL https://get.docker.com | sudo sh
```

## Add the current user to `docker` group 

This will help you to execute `docker` command without  `sudo`

```bash
sudo usermod -aG docker $USER
```

##  Update user's group access 

```bash
newgrp docker
```

`Note:` To update your group access persistently, log off and login back again.
 
## Install `docker-compose` command

```bash
sudo apt install docker-compose
```

## Clone the repository to your docker host

```
git clone https://github.com/ceee-dev/docker-mysql-dev.git
```

##  Change the directory 
 
```
cd docker-mysql-dev
```
 
## Creare `.env` file

```bash
bash create-env.sh 
```

## Deploy mysql using `docker-compose` command

```
docker-compose up -d
```
## Observing mysql docker logs 

```bash
docker-compose  logs -f
```m

`Note:`  Press  ```Ctrl + C``` to exit from log interface

## Unstalling 

```bash
docker-compose -f down -v --rmi all --remove-orphans
```


