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
    padding: EdgeInsets.zero,    
    decoration: BoxDecoration(
      gradient: LinearGradient(colors: <Color> [
        Color.fromRGBO(48, 48, 48, 1),
        //Color.fromRGBO(54, 54, 54, 1),
        Colors.white10
      ])
    ),
    child: Container(
      child: Column(
        children: <Widget>[
          Material(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset('assets/imagen_panel.png', width: 80, height: 80,),
            ),
          ),
          Text('Directorio Notarial', style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),),
          Text('Ubicación a Nivel Nacional', style: TextStyle(color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.bold),),
        ],  
      ),
    ),
  );
}

Widget _crearDrawerItem ({IconData icono, String titulo, GestureTapCallback onTap}) {
  return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
      child: Container(
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.white10))
        ),
        child: InkWell(
          splashColor: Color.fromRGBO(255, 193, 7, 1),
          onTap: onTap,
          child: Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(icono, color: Color.fromRGBO(255, 193, 7, 1)),
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(titulo, style: TextStyle(color: Colors.white, fontSize: 16),),
                    ),
                  ],
                ),
                
                Image.asset(
                  'assets/boton-ir.png',
                  width: 20.0,
                  height: 20.0,
                  
                )
              ],
            ),
          ),
        ),
      ),
  );
}

}