# Graal-Javalin Demo
![Docker Build Status](https://img.shields.io/docker/build/birdy/graal-javalin.svg)

This sample shows how to build a Javalin microservice and compiling it to native code with GraalVM. I don't expect it to work on anything else than Linux AMD64.

Try it out: 
```
docker run -d --init -p 7000:7000 birdy/graal-javalin
curl localhost:7000
```

Build either by using Docker and running `docker build .` or directly with Gradle and native-image by running `make build native`.

Find the docker image of this example on [DockerHub](https://hub.docker.com/r/birdy/graal-javalin).
