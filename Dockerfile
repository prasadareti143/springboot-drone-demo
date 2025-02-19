# Start with a base image containing Java runtime
FROM openjdk:8-jdk-alpine

# Add Maintainer Info
LABEL maintainer="prasadawsvalue@gmail.com"

## Add a volume pointing to /tmp
VOLUME /tmp

# Make port 8080 available to the world outside this container
EXPOSE 8080

# The application's jar file
ARG JAR_FILE=target/droneci-demo-0.0.1-SNAPSHOT.jar

# Add the applicatio	n's jar to the container
ADD ${JAR_FILE} droneci-demo-0.0.1-SNAPSHOT.jar

# Run the jar file 
#comment for build
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/droneci-demo-0.0.1-SNAPSHOT.jar"]
