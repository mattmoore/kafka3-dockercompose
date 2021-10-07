if [ -d build ]; then rm -rf build; fi
mkdir build
curl --output kafka.tgz https://dlcdn.apache.org/kafka/3.0.0/kafka_2.13-3.0.0.tgz
tar xf kafka.tgz -C build
docker build -t mattmoore/kafka:3 -t mattmoore/kafka:latest -f kafka.Dockerfile .

