FROM alpine:latest

COPY . /app
RUN apk update && apk add bash curl jq
RUN ln -sf /bin/bash /bin/sh
RUN chmod +x /app/macaddress.sh
ENTRYPOINT ["/app/macaddress.sh"]
CMD ["-h"]
