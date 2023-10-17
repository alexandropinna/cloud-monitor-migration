# Dockerfile-prometheus
# FROM prom/prometheus:v2.41.0
FROM prom/prometheus:v2.47.2

COPY ./Dockerfiles/monitoring/prometheus /etc/prometheus

EXPOSE 9090
