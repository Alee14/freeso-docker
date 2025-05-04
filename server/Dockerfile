FROM mcr.microsoft.com/dotnet/core/runtime:2.2

WORKDIR /app

COPY ./start.sh .
COPY ./FreeSOServer/. .

ENTRYPOINT ["/app/start.sh"]
