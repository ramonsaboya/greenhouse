#!/bin/bash
docker push devopsgreenhouse/elasticsearch:dev
docker push devopsgreenhouse/kibana:dev
docker push devopsgreenhouse/logstash:dev
docker push devopsgreenhouse/hystrix-dashboard:dev
docker push devopsgreenhouse/order-complete-updater:dev
docker push devopsgreenhouse/order-service:dev
docker push devopsgreenhouse/payment-distribution:dev
docker push devopsgreenhouse/payment-service:dev
docker push devopsgreenhouse/restaurant-service:dev
