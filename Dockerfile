FROM adoptopenjdk:11-jre-hotspot

RUN mkdir /opt/app
COPY Hello.java /opt/app
WORKDIR /opt/app
RUN javac Hello.java
ENTRYPOINT ["java Hello"]
