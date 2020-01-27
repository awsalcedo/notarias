import 'package:flutter/material.dart';
import 'package:notarias/src/widgets/menu_lateral.dart';

class HomePage extends StatelessWidget {
  //const HomePage({Key key}) : super//(key: key);

  static final routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: MenuLateral(),
    );
  }

  
}