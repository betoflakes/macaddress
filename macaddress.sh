#!/bin/sh

helpFunction()
{
    echo ""
    echo "Usage: $0 -m macAddress -a apiKey"
    echo "\t-m MAC Address (required)"
    echo "\t-a API Key required to access MAC Address API (required)"
    echo "\t-h Display this help information"
    exit 1
}

while getopts "m:a:h" opt
do
    case "${opt}" in
        m ) macAddress=${OPTARG} ;;
        a ) apiKey=${OPTARG} ;;
        h ) helpFunction ;;
        ? ) helpFunction ;;
    esac
done

echo "MAC Address: $macAddress"

if [ $apiKey != "" ]; then
    url_request=("https://api.macaddress.io/v1?apiKey=${apiKey}&output=json&search=${macAddress}")
    url+=("${url_request[@]}")
    response=$(curl -sS "${url[@]}" | jq '.vendorDetails.companyName')
    echo "Company Name: $response"
    exit 1
else
    echo "API Key is required to access MAC Address API"
    exit 0
fi