import 'package:flutter/material.dart';
import 'package:notarias/src/pages/enlaces_page.dart';
import 'package:notarias/src/pages/home_page.dart';
import 'package:notarias/src/pages/mision_page.dart';
import 'package:notarias/src/pages/noticias_page.dart';
import 'package:notarias/src/pages/publicidad_page.dart';
import 'package:notarias/src/pages/vision_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        canvasColor: Color.fromRGBO(65, 65, 65, 1),
      ),
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName : (BuildContext context) => HomePage(),
        MisionPage.routeName : (BuildContext context) => MisionPage(),
        VisionPage.routeName : (BuildContext context) => VisionPage(),
        NoticiasPage.routeName : (BuildContext context) => NoticiasPage(),
        PublicidadPage.routeName : (BuildContext context) => PublicidadPage(),
        EnlacesPage.routeName : (BuildContext context) => EnlacesPage()
      },
    );
  }
}