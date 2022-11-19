FROM mcr.microsoft.com/dotnet/aspnet:6.0

COPY csproj/bin/Release/net6.0 /App
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]