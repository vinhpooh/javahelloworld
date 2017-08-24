FROM java:7

ENV FOO bar

RUN apt-get update
RUN apt-get install -y vim

WORKDIR /home/root/javahelloworld
COPY src src
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java

ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]

WORKDIR /
RUN touch test
