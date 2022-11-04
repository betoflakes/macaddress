# MACAddress API

## Author: JR Saucedo [@betoflakes](https://github.com/betoflakes)

1. Build docker image:
Run the `build.sh` script to auto build the images. Shell script version and Dart version.

   ```bash
   sh ./build.sh
   ```

### Shell script version

The first version to run is `macaddress.sh` which run shell script the native way in a docker container.

#### Usage Shell Script

Run the docker container with the params required. In this case the `apiKey` is required too, trying to avoid over api key use.

   1. Params required.

   ```bash
   Usage: macaddress -m macAddress -a apiKey
      -m MAC Address (required)
      -a API Key required to access MAC Address API (required)
      -h Display this help information
   ```

   2. Run container with params.

   ```bash
   docker run --rm -it macaddress -m XX:XX:XX:XX:XX:XX -a at_XXXXXXXXXXXXXXXXXXXX
   ```

   Expected response:

   ```bash
   MAC Address: XX:XX:XX:XX:XX:XX
   Company Name: "Some company"
   ```

### Dart version

The Dart version to runs a `macaddress` compiled from a dart package.

#### Usage Dart Version

Run the docker container with the params required. In this case the `apiKey` is required too, trying to avoid over api key use.

   1. Params required.

   ```bash
   Usage: macaddress --macaddress <macaddress> --apikey <apikey>
      -m | --macaddres MAC Address (required)
      -a | --apikey API Key required to access MAC Address API (required)
      -h | --help Display this help information
   ```

   2. Run container with params.

   ```bash
   docker run --rm -it macaddress-dart -m XX:XX:XX:XX:XX:XX -a at_XXXXXXXXXXXXXXXXXXXX
   ```

   Expected response:

   ```bash
   Company Name: "Some company"; MAC Address: XX:XX:XX:XX:XX:XX;
   ```
