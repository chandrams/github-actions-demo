FROM adoptopenjdk/openjdk8:latest

RUN mkdir /opt/app
COPY Hello.java /opt/app
WORKDIR /opt/app
RUN javac Hello.java
ENTRYPOINT ["java Hello"]
