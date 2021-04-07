FROM registry.redhat.io/ubi8-minimal
RUN microdnf install procps -y
COPY run.sh /usr/local/bin/run.sh
ENTRYPOINT /usr/local/bin/run.sh
