FROM alpine:3.11
RUN        apk add --no-cache ca-certificates
COPY       ingester /bin/ingester
EXPOSE     80
ENTRYPOINT [ "/bin/ingester" ]

ARG revision
LABEL org.opencontainers.image.title="ingester" \
      org.opencontainers.image.source="https://github.com/cortexproject/cortex/tree/master/cmd/ingester" \
      org.opencontainers.image.revision="${revision}"
