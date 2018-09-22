build:
	./gradlew clean build fatJar
native: build
	 native-image -jar build/libs/graal-httpserver-all-1.0-SNAPSHOT.jar -H:ReflectionConfigurationFiles=reflection.json -H:+JNI \
		 -H:Name=graal-httpserver
setup:
	sdk install java 1.0.0-rc6-graal
	sdk use java 1.0.0-rc6-graal
 
