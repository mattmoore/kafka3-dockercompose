# Kafka 3 with docker-compose

Intended to be used with docker-compose repo at https://github.com/mattmoore/kafka3-dockercompose.

To spin up the kafka environment:

```shell
docker-compose up -d
```

There is an included kafka-cli container that can be used to execute the client tools.

Creating a topic:

```shell
docker-compose run --rm kafka-cli ./kafka-topics.sh --bootstrap-server kafka:9094 --create --partitions 1 --replication-factor 1 --topic events
```

```shell
docker-compose run --rm kafka-cli ./kafka-topics.sh --bootstrap-server kafka:9094 --list
```

If you already have the client tools installed on localhost, you can use those as well:

```shell
kafka-topics --bootstrap-server localhost:9092 --create --partitions 1 --replication-factor 1 --topic events
kafka-topics --bootstrap-server localhost:9092 --list
```

Note that if you run the client tools from the `kafka-cli` container, the `--bootstrap-server` will need to be set to `kafka:9094`. If you're running them locally, you can use `localhost:9092`.

