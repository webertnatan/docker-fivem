# Dockerized fivem server

## Create environment file

```
$ cat .env
steamKey=XXXXXXXXXXXXX
licenseKey=XXXXXXXXXXXXX
```

## Deploy & Undeploy

### Every service

```
$ ./deploy.sh
$ ./undeploy.sh
```

### Single service (in case there are more services in `docker-compose.yml`)

```
$ ./deploy.sh `service-name`
$ ./undeploy.sh `service-name`
```
