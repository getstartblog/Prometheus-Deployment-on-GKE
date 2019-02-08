FROM prom/prometheus

COPY prometheus.yaml /etc/prometheus/prometheus.yaml

VOLUME     [ "/prometheus" ]
WORKDIR    /prometheus
EXPOSE     9090
ENTRYPOINT [ "/bin/prometheus" ]
CMD        [ "--config.file=/etc/prometheus/prometheus.yaml" ]
