FROM dart:latest as build

WORKDIR /app
COPY . /app
RUN dart pub get
RUN dart compile exe bin/macaddress.dart -o bin/macaddress

FROM build
COPY --from=build /app/bin/macaddress /usr/local/bin/macaddress

WORKDIR /
RUN chmod +x /usr/local/bin/macaddress
RUN macaddress --help

ENTRYPOINT [ "macaddress" ]