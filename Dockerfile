FROM openjdk:8-alpine
RUN apk add curl
RUN curl -LO https://raw.githubusercontent.com/chandrasekarsrin/hello-dev/dev/build_spec.yaml
COPY ./src/main/java/org/example/HelloWorld.class /app/org/example/HelloWorld.class
WORKDIR /app
ENTRYPOINT ["java", "org.example.HelloWorld"]
