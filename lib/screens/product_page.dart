import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductPage extends StatefulWidget{

  @override
  ProductPageState createState() => ProductPageState();

}

class ProductPageState extends State<ProductPage>{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
//      appBar: _appBar(),
      body: Container(
        color: Colors.grey[100],
        height: 300.0,

      ),
    );
  }

  AppBar _appBar(){
    return AppBar(
      leading: Icon(
          FontAwesomeIcons.phone
      ),
    );
  }
  
}