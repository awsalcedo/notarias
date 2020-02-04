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
      child: Swiper(
        layout: SwiperLayout.TINDER,
        itemWidth: _screenSize.width * 0.7,
        itemHeight: _screenSize.height * 0.35,
        itemBuilder: (BuildContext context, int index){
          return ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.network(
              "http://via.placeholder.com/288x188",
              fit: BoxFit.cover,
            ),
          );
        },
        itemCount: 24,
        
      ),
    );
  }
}