FROM ibm-semeru-runtimes:open-11-jre-focal
MAINTAINER https://renanfranca.github.io/about.html
COPY target/GymDates-0.0.1-SNAPSHOT.jar GymDates-0.0.1-SNAPSHOT.jar
ENV _JAVA_OPTIONS="-XX:MaxRAM=70m"
CMD java $_JAVA_OPTIONS -Dspring.profiles.active=$SPRING_PROFILES_ACTIVE -jar GymDates-0.0.1-SNAPSHOT.jar