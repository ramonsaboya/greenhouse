#!/bin/bash
cd hystrix-dashboard/ && mvn dependency:go-offline && mvn package && docker image build . -t devopsgreenhouse/hystrix-dashboard:dev && cd ..
cd order-complete-updater/ && mvn dependency:go-offline && mvn package && docker image build . -t devopsgreenhouse/order-complete-updater:dev && cd ..
cd order-service/ && mvn dependency:go-offline && mvn package && docker image build . -t devopsgreenhouse/order-service:dev && cd ..
cd payment-distribution/ && mvn dependency:go-offline && mvn package && docker image build . -t devopsgreenhouse/payment-distribution:dev && cd ..
cd payment-service/ && mvn dependency:go-offline && mvn package && docker image build . -t devopsgreenhouse/payment-service:dev && cd ..
cd restaurant-service/ && mvn dependency:go-offline && mvn package && docker image build . -t devopsgreenhouse/restaurant-service:dev && cd ..
