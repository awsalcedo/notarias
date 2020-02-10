import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:notarias/src/models/notaria_model.dart';

class NotariasProvider {
  //String _url = 'directorionotarial.com/notarias-internet/api/v1.0/mysql/';
  String _url = 'directorionotarial.com';

  void initNotarias () {
    //Borrar un localstorage antiguo de provincias

    _cargarNotarias();
  }

  Future<List<Notaria>> getNotarias() async {
    final url = Uri.https(_url, 'notarias-internet/api/v1.0/mysql/notarias.php');
    final resp = await http.get(url);

    final notaria = notariaFromJson(resp.body); //mapea a la entidad

    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('notarias', resp.body);

    
    print(notaria[1].notariosPasivos[0].nombre);


    return [];
  }

  void _cargarNotarias() {
    //obtener las notarias del sharedPreference
    
  }


}