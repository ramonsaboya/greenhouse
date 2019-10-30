#!/bin/bash
docker push devopsgreenhouse/order-complete-updater:dev
docker push devopsgreenhouse/order-service:dev
docker push devopsgreenhouse/payment-distribution:dev
docker push devopsgreenhouse/payment-service:dev
docker push devopsgreenhouse/restaurant-service:dev
