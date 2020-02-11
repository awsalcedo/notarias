import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:notarias/src/models/notaria_model.dart';

class NotariasProvider {
  //String _url = 'directorionotarial.com/notarias-internet/api/v1.0/mysql/';
  String _url = 'directorionotarial.com';

  void initNotarias () {
    //Borrar un localstorage antiguo de provincias

    //_cargarNotarias();
  }

  Future<List<String>> getNotarias() async {
    final url = Uri.https(_url, 'notarias-internet/api/v1.0/mysql/notarias.php');
    final resp = await http.get(url);

    final notarias = notariaFromJson(resp.body); //mapea el string a la entidad

    List<String> provincias = new List<String>();

    notarias.forEach((item) => provincias.add(item.provincia));


    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('notarias', resp.body);

    //_obtenerCantonesPorProvincia();

    //print(notarias[1].notariosPasivos[0].nombre);


    return provincias.toSet().toList();
  }

   _obtenerCantonesPorProvincia( String nombreProvincia) async {
      SharedPreferences preferences = await SharedPreferences.getInstance();
      final notariasString = preferences.getString('notarias');
      final notarias = notariaFromJson(notariasString);

      //notarias.

      return null;
  }


}