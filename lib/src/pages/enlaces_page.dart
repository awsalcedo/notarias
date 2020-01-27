import 'package:flutter/material.dart';
import 'package:notarias/src/widgets/menu_lateral.dart';

class EnlacesPage extends StatelessWidget {
  //const EnlacesPage({Key key}) : super(key: key);

  static final routeName = 'enlaces';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enlaces'),
      ),
      drawer: MenuLateral(),
      body: Center(
        child: Text('Enlaces'),
      ),
    );
  }
}