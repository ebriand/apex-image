FROM scratch
LABEL maintener eric.briand@gmail.com
COPY certs/ca-certificates.crt /etc/ssl/certs/
COPY apex /

ENTRYPOINT ["/apex"]
