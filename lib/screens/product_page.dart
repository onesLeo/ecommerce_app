import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductPage extends StatefulWidget {
  @override
  ProductPageState createState() => ProductPageState();
}

class ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: _appBar(),
        body: ListView(
      children: <Widget>[
          SizedBox(
          height: 250.0,
          width: 300.0,
          child: Container(
            height: 180,
            child: ClipRRect(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25)),
              child: Carousel(
                boxFit: BoxFit.cover,
                autoplay: false,
                animationCurve: Curves.fastOutSlowIn,
                animationDuration: Duration(milliseconds: 1000),
                dotSize: 6.0,
                dotIncreasedColor: Colors.grey[100],
                dotPosition: DotPosition.bottomCenter,
                dotVerticalPadding: 1.0,
                showIndicator: true,
                indicatorBgPadding: 7.0,
                images: [
                  AssetImage("images/vegetables.jpg"),
                  AssetImage("images/healthiest_vegetables.jpg"),
                ],
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 4.0,
                )
              ]
            ),
          )
        ),
          Text('Sayur Mayur', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 40,), )
      ],
    ));
  }

  AppBar _appBar() {
    return AppBar(
      leading: Icon(FontAwesomeIcons.phone),
    );
  }
}
