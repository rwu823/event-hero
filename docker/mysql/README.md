
## Build Image From GitHub
```sh
git clone --depth 1 https://github.com/rwu823/event-hero.git &&
docker build event-hero/docker/mysql -t event-hero/mysql
```

## Start Container

```sh
docker run -d --name=mysql \
-p 3306:3306 \
event-hero/mysql
```
