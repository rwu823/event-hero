
## Build Image From GitHub
```sh
git clone --depth 1 https://github.com/rwu823/event-hero.git &&
docker build event-hero/docker/mongo -t event-hero/mongo
```

## Start Container

```sh
docker run -d --name mongo \
-p 27017:27017 \
event-hero/mongo
```
