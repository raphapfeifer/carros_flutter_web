import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Size get size => MediaQuery.of(context).size;

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Web - ${size.width}/${size.height}'),
      ),
      body: _body(),
      drawer: Drawer(
        child: _menu(),
      ),
    );
  }

  _body() {

    return Row(
      children: [
        _menu(),
        _right(),
      ],
    );
  }

  _menu() {
    return Container(
      width: size.width * 0.2,
      color: Colors.blue[100],
      child: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.star),
            title: Text("Item1"),
          ),ListTile(
            leading: Icon(Icons.star),
            title: Text("Item2"),
          ),ListTile(
            leading: Icon(Icons.star),
            title: Text("Item3"),
          )
        ],
      )
    );
  }

  _right() {
    return Container(
      width: size.width * 0.8,
      color: Colors.grey[100],
    );
  }
}
