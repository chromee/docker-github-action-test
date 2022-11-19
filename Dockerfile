FROM mcr.microsoft.com/dotnet/aspnet:6.0

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]