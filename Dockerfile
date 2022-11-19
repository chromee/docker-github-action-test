FROM alpine:3.10

COPY csproj/bin/Release/net6.0 /App
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]