
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../app_model.dart';

class Body extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    print('body');

    AppModel app = Provider.of<AppModel>(context, listen: true);

    return app.page;
  }
}
