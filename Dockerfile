FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build

WORKDIR /build

COPY ./ExampleAspNetCoreApp/*.csproj ./ExampleAspNetCoreApp/
COPY ./*.sln ./

RUN dotnet restore

COPY ./ ./

RUN dotnet publish --no-restore

FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS runtime

WORKDIR /app

COPY --from=build /build/ExampleAspNetCoreApp/bin/Release/net8.0/publish/ ./

CMD [ "./ExampleAspNetCoreApp" ]
