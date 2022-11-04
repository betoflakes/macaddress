#!/bin/sh

docker build -t macaddress .;
cd macaddress;
docker build -t macaddress-dart .;