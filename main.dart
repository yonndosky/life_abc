import 'dart/element_lisreners.dart';
import 'package:http/http.dart' as http;

Future<void> main() async {
  setElementListeners();
  var url = Uri.https('example.com', 'whatsit/create');
  var response =
      await http.post(url, body: {'name': 'doodle', 'color': 'blue'});
  print('Response status: ${response.statusCode}');
  print('Response body: ${response.body}');

  print(await http.read(Uri.https('example.com', 'foobar.txt')));
}
