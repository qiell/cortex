FROM alpine:3.11
RUN        apk add --no-cache ca-certificates
COPY       ruler /bin/ruler
EXPOSE     80
ENTRYPOINT [ "/bin/ruler" ]

ARG revision
LABEL org.opencontainers.image.title="ruler" \
      org.opencontainers.image.source="https://github.com/cortexproject/cortex/tree/master/cmd/ruler" \
      org.opencontainers.image.revision="${revision}"
