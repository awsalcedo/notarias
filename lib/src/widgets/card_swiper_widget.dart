import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class CardSwiper extends StatelessWidget {
  //const CardSwiper({Key key}) : super(key: key);

  final List<dynamic> provincias;

  CardSwiper({ @required this.provincias });

  @override
  Widget build(BuildContext context) {

    final _screenSize = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.only(top: 10.0),
      //height: 200.0,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
        return ClipRRect(
                  borderRadius: BorderRadius.circular(13.0),
                  child: FadeInImage(
                    image: AssetImage('assets/provincias/' + provincias[index].toString() + '.jpg'),
                    placeholder: AssetImage('assets/provincias/no-image.jpg'),
                    fit: BoxFit.cover, //la imagen se adapta a todo el ancho y largo del Swiper
                  ),
              );
        },
        itemCount: provincias.length,
        itemWidth: _screenSize.width * 0.6,
        itemHeight: _screenSize.height * 0.3,
        layout: SwiperLayout.TINDER,
      )
    );
  }
}