import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:notarias/src/models/notaria_model.dart';

class NotariasProvider {
  //String _url = 'directorionotarial.com/notarias-internet/api/v1.0/mysql/';
  String _url = 'directorionotarial.com';

  Future<List<Notaria>> getNotarias() async {
    final url = Uri.https(_url, 'notarias-internet/api/v1.0/mysql/notarias.php');
    final resp = await http.get(url);
    final decodedData = json.decode(resp.body);
    print(decodedData);
    return [];
  }


}