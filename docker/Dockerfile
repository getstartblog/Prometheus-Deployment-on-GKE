FROM prom/prometheus

COPY prometheus.yaml /etc/prometheus/prometheus.yaml

EXPOSE     9090
VOLUME     [ "/prometheus" ]
WORKDIR    /prometheus
ENTRYPOINT [ "/bin/prometheus" ]
CMD        [ "--config.file=/etc/prometheus/prometheus.yaml" ]
