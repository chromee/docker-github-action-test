FROM alpine:3.10

RUN \
  echo "~~~~~~~~~ls -la on Dockerfile~~~~~~~~~" \
  ls -la

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]