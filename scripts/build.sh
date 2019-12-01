#!/bin/bash
set -a
. .env
set +a
cd elasticsearch/ && docker image build --build-arg ELK_VERSION=$ELK_VERSION . -t devopsgreenhouse/elasticsearch:dev && cd ..
cd kibana/ && docker image build --build-arg ELK_VERSION=$ELK_VERSION . -t devopsgreenhouse/kibana:dev && cd ..
cd logstash/ && ls && docker image build --build-arg ELK_VERSION=$ELK_VERSION . -t devopsgreenhouse/logstash:dev && cd ..
cd hystrix-dashboard/ && mvn dependency:go-offline && mvn package && docker image build . -t devopsgreenhouse/hystrix-dashboard:dev && cd ..
cd order-complete-updater/ && mvn dependency:go-offline && mvn package && docker image build . -t devopsgreenhouse/order-complete-updater:dev && cd ..
cd order-service/ && mvn dependency:go-offline && mvn package && docker image build . -t devopsgreenhouse/order-service:dev && cd ..
cd payment-distribution/ && mvn dependency:go-offline && mvn package && docker image build . -t devopsgreenhouse/payment-distribution:dev && cd ..
cd payment-service/ && mvn dependency:go-offline && mvn package && docker image build . -t devopsgreenhouse/payment-service:dev && cd ..
cd restaurant-service/ && mvn dependency:go-offline && mvn package && docker image build . -t devopsgreenhouse/restaurant-service:dev && cd ..
