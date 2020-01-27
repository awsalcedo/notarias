import 'package:flutter/material.dart';
import 'package:notarias/src/pages/enlaces_page.dart';
import 'package:notarias/src/pages/home_page.dart';
import 'package:notarias/src/pages/mision_page.dart';

class MenuLateral extends StatelessWidget {
  //const MenuLateral({Kegy key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          
          Column(
            children: <Widget>[
              _crearCabeceraDrawer(),
              /*
              DrawerHeader(
                child: Container(
                  child: Image.asset(
                            'assets/imagen_panel.png',
                            height: 78.0, 
                            width: 78.0, 
                          ),
                    ),
                  
              ),
              */
              
            Container(
              color: Color.fromRGBO(255, 193, 7, 1),
              child: Text('Directorio Notarial', style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),),
              padding: EdgeInsets.symmetric(vertical: 5.0),
            ),
              
            Container(
              color: Color.fromRGBO(255, 193, 7, 1),
              child: Text('Ubicación a Nivel Nacional', style: TextStyle(color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.bold),),
              padding: EdgeInsets.symmetric(vertical: 5.0),
            ),
              
              
            ],
          ),
          _crearDrawerItem(
            icono: Icons.home, 
            titulo: 'Notarias',
            onTap: () => Navigator.pushReplacementNamed(context, HomePage.routeName)
          ),
          _crearDrawerItem(
            icono: Icons.important_devices,
            titulo: 'Misión',
            onTap: () => Navigator.pushReplacementNamed(context, MisionPage.routeName)
          ),
          _crearDrawerItem(
            icono: Icons.info,
            titulo: 'Visión',
            onTap: () {}
          ),  
          _crearDrawerItem(
            icono: Icons.insert_chart,
            titulo: 'Noticias',
            onTap: () {}
          ),
          _crearDrawerItem(
            icono: Icons.iso,
            titulo: 'Publicidad',
            onTap: () {}
          ),
          _crearDrawerItem(
            icono: Icons.laptop,
            titulo: 'Enlaces',
            onTap: () => Navigator.pushReplacementNamed(context, EnlacesPage.routeName)
          )
        ],
      ),
    );
  }

Widget _crearCabeceraDrawer () {
  return DrawerHeader(
    //margin: EdgeInsets.symmetric(horizontal: 28.0, vertical: 28.0),
    
    decoration: BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.scaleDown,
        image: AssetImage(
          'assets/imagen_panel.png'
        ),
      )
    ),
    child: Stack(
      children: <Widget>[
        Positioned(
          bottom: 1.0,
          left: 50.0,
          child: Column(
            children: <Widget>[
              Text('Directorio Notarial', style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),),
              Text('Ubicación a Nivel Nacional', style: TextStyle(color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.bold),),
            ],
          ),
        ),
        
      ],
    ),
  );
}

Widget _crearDrawerItem ({IconData icono, String titulo, GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icono, color: Color.fromRGBO(255, 193, 7, 1)),
        Padding(
          padding: EdgeInsets.only(left: 30.0),
          child: Text(titulo, style: TextStyle(color: Colors.white),),
        )
      ],
    ),
    onTap: onTap,
  );
}

}