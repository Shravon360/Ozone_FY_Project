#!/bin/bash

echo "Starting Prometheus..."
/usr/local/bin/prometheus \
  --config.file=/etc/prometheus/prometheus.yml \
  --storage.tsdb.path=/prometheus-data &

echo "Starting Loki..."
/usr/local/bin/loki \
  -config.file=/etc/loki/loki-config.yaml &

echo "Starting Grafana..."
/usr/sbin/grafana-server \
  --homepath=/usr/share/grafana
