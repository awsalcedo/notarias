import 'package:flutter/material.dart';
import 'package:notarias/src/widgets/card_swiper_widget.dart';
import 'package:notarias/src/widgets/menu_lateral.dart';


class HomePage extends StatelessWidget {
  //const HomePage({Key key}) : super//(key: key);

  static final routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'NOTARIAS POR PROVINCIA',
          style: TextStyle(color: Colors.white, fontSize: 19.0),
        ),
        backgroundColor: Color.fromRGBO(59, 59, 59, 1),
        iconTheme: IconThemeData(color: Color.fromRGBO(255, 193, 7, 1)),
        actions: <Widget>[
          IconButton(
            padding: EdgeInsets.all(4.0),
            icon: Icon(Icons.search, color: Color.fromRGBO(255, 193, 7, 1),),
            onPressed: (){},
          ),
          IconButton(
            padding: EdgeInsets.all(4.0),
            icon: Icon(Icons.navigation, color: Color.fromRGBO(255, 193, 7, 1),),
            onPressed: (){},
          )
        ],
      ),
      drawer: MenuLateral(),
      body: _crearSwiper(),
    );
  }

  Widget _crearFormulario() {
    return Center(
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(16.0),
                  child: _crearSwiper(),
                ),
              ],
            ),
      ),
    );
  }

  Widget _crearSwiper() {
    return CardSwiper(
      provincias: [1,2,3,4],
    );
  }

  
}