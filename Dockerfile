FROM azul/zulu-openjdk:11.0.10
RUN set -x \
    mkdir -p /app
COPY ./target/demo-0.1.jar /app/
EXPOSE 8080
WORKDIR /app
CMD ["java", "-jar", "demo-0.1.jar"]