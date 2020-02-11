import 'package:flutter/material.dart';
import 'package:notarias/src/providers/notarias_provider.dart';
import 'package:notarias/src/widgets/card_swiper_widget.dart';
import 'package:notarias/src/widgets/menu_lateral.dart';


class HomePage extends StatelessWidget {
  //const HomePage({Key key}) : super//(key: key);

  static final routeName = 'home';
  final notariasProvider = new NotariasProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          'NOTARIAS POR PROVINCIA',
          style: TextStyle(color: Colors.white, fontSize: 14.0),
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
      body: Container(
        child: Column(
          children: <Widget>[
            _crearSwiperProvincias(),
          ],
        ),
      ),
    );
  }

  

  Widget _crearSwiperProvincias() {

    return FutureBuilder(
      future: notariasProvider.getNotarias(),
      builder: (BuildContext context, AsyncSnapshot<List<String>> snapshot) {
        if(snapshot.hasData){
          return CardSwiper(
            provincias: snapshot.data
          );
        } else {
          return Container(
            height: 150.0,
            child: Center(child: CircularProgressIndicator())
          );
        }
        
      },
    );

  }

/*
  Widget _crearListaCantones() {
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (BuildContext context, int index) {
      return ;
     },
    );

  }
*/
  
}