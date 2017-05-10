FROM anapsix/alpine-java:latest
COPY src /home/root/javahelloworld/src
WORKDIR /home/root/javahelloworld
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
ENV FOO bar
ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]
