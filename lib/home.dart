
import 'package:carros_flutter_web/web/body.dart';
import 'package:carros_flutter_web/web/header.dart';
import 'package:carros_flutter_web/web/menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Size get size => MediaQuery.of(context).size;

  bool get showMenu => size.width > 500;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _header(),
          _body(),
        ],
      ),
    );
  }

   _header() {
    return Container(
          padding: EdgeInsets.all(16.0),
          width: size.width,
          height: headerHeight,
          color: Colors.blue,
          child: Header(),
        );
  }

   _body() {
    return Container(
          width: size.width,
          height: size.height - headerHeight,
          child: showMenu ?
          Row(
            children: [
              _menu(),
              _right(),
            ],
          )
       :  _right(),
        );
  }



  _menu() {
    return Container(
      width: menuWidth,
      color: Colors.grey[100],
      child: Menu(),
    );
  }

  _right() {

    return Container(
      color: Colors.yellow,
      padding: EdgeInsets.all(16),
      width:  showMenu ? size.width - menuWidth : size.width,
      child: Body(),
    );
  }
}
