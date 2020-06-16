
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../app_model.dart';

class BreadCrumb extends StatefulWidget {
  @override
  _BreadCrumbState createState() => _BreadCrumbState();
}

class _BreadCrumbState extends State<BreadCrumb> {

  @override
  Widget build(BuildContext context) {

    AppModel app = Provider.of<AppModel>(context);

    return Text("${app.pages.toString()}");
  }
}
