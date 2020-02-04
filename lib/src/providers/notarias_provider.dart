import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:notarias/src/models/notaria_model.dart';

class NotariasProvider {
  String _url = 'https://directorionotarial.com/notarias-internet/api/v1.0/mysql';

  Future<List<Notaria>> getNotarias() async {
    final url = Uri.https(_url, 'notarias.php');
    final resp = await http.get(url);
    final decodedData = json.decode(resp.body);
    print(decodedData);
    return [];
  }


}