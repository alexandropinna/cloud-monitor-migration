# Dockerfile-prometheus
FROM prom/prometheus:v2.41.0

COPY ./Dockerfiles/monitoring/prometheus /etc/prometheus

EXPOSE 9090