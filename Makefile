.PHONY: build native setup
build:
	./gradlew clean build fatJar
native: build
	 native-image -jar build/libs/graal-javalin-all-1.0-SNAPSHOT.jar -H:ReflectionConfigurationFiles=reflection.json -H:+JNI \
		 -H:Name=graal-javalin --static
setup:
	sdk install java 1.0.0-rc6-graal
	sdk use java 1.0.0-rc6-graal
 
