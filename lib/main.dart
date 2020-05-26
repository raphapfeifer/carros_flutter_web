import 'package:carros_flutter_web/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: _theme(),
      home: HomePage(),
    );
  }

  ThemeData _theme() {
    return ThemeData(
      primarySwatch: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      splashColor: Colors.blue,
      hoverColor: Colors.blue[100],
      textTheme: TextTheme(
        body1: TextStyle(
          fontSize: 20
        )
      ),
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }
}



