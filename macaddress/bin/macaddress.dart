import 'package:macaddress/main.dart' as macaddress;
import 'package:args/args.dart';

void main(List<String> arguments) async {
  final parser = ArgParser()
    ..addFlag('help', abbr: 'h')
    ..addOption('macaddress', abbr: 'm')
    ..addOption('apikey', abbr: 'a');
  if (arguments.isEmpty ||
      arguments.contains('--help') ||
      arguments.contains('-h')) {
    helpFunction();
    return;
  }
  String macAddress = parser.parse(arguments)['macaddress'];
  String apiKey = parser.parse(arguments)['apikey'];
  var response = await macaddress.getData(macAddress, apiKey);
  print('${response}');
}

helpFunction() {
  print('''
 Usage: macaddress --macaddress <macaddress> --apikey <apikey>
  -m | --macaddres MAC Address (required)
  -a | --apikey API Key required to access MAC Address API (required)
  -h | --help Display this help information
''');
}
