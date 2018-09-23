FROM birdy/graalvm:latest

SHELL ["bash", "--login", "-c"]
WORKDIR /tmp/build
ENV GRADLE_USER_HOME /tmp/build/.gradle

ADD . /tmp/build
RUN ./gradlew build fatJar
RUN native-image -jar /tmp/build/build/libs/graal-javalin-all-1.0-SNAPSHOT.jar -H:ReflectionConfigurationFiles=reflection.json -H:+JNI \
  -H:Name=graal-httpserver --static

FROM scratch
COPY --from=0 /tmp/build/graal-javalin /
ENTRYPOINT ["/graal-javalin"]
