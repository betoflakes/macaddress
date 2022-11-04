import 'dart:convert';
import 'package:http/http.dart' as http;

Future<String> getData(macAddress, apiKey) async {
  var url =
      'https://api.macaddress.io/v1?apiKey=$apiKey&output=json&search=$macAddress';
  var response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    var jsonResponse = jsonDecode(response.body);
    var vendorDetails = jsonResponse['vendorDetails'];
    var company = vendorDetails['companyName'];
    return 'Company: $company; MacAddress: $macAddress;';
  } else {
    return 'Request failed with status: ${response.statusCode}.';
  }
}
