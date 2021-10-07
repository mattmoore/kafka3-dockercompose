FROM eclipse-temurin:11
RUN mkdir /app
COPY build/kafka_2.13-3.0.0/ /app/
