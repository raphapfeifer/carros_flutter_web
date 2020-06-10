
import 'dart:async';

import 'package:carros_flutter_web/pages/carros/carro.dart';
import 'package:carros_flutter_web/pages/carros/carro_page.dart';
import 'package:carros_flutter_web/pages/carros/carros_api.dart';
import 'package:carros_flutter_web/utils/nav.dart';
import 'package:carros_flutter_web/web/web_utils.dart';
import 'package:flutter/material.dart';

class CarrosPage extends StatefulWidget {
  @override
  _CarrosPageState createState() => _CarrosPageState();
}

class _CarrosPageState extends State<CarrosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder<List<Carro>>(
          future: CarrosApi.getCarros(context),
          builder: (BuildContext context, AsyncSnapshot snaphot){
            if(!snaphot.hasData){
              return Center(child: CircularProgressIndicator(),);
            }

            List<Carro> carros = snaphot.data;

            return _listView(carros);
          },
        )
    );
  }

  _listView(List<Carro> carros) {
    return GridView.builder(
        itemCount: carros.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            childAspectRatio: 1.5),
        itemBuilder: (context, index) {
          return LayoutBuilder(builder: (context, constraints) {
            double fontSize = size(constraints.maxWidth * 0.1,
                min: 10, max: Theme
                    .of(context)
                    .textTheme
                    .body1
                    .fontSize);

            Carro carro = carros[index];

            return InkWell(
              onTap: () => _onClickCarro(carro),
              child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ConstrainedBox(
                        constraints: BoxConstraints(
                            maxWidth: 250
                        ),
                        child: Container(
                          color: Colors.blue[50],
                          child: Image.network(
                             carro.urlFoto ?? "http://www.livroandroid.com.br/livro/carros/esportivos/Renault_Megane_Trophy.png"),
                        ),
                      ),
                      Text(
                        carro.nome ?? "",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: fontSize),
                      )
                    ],
                  )),
            );
          });
        });
  }

  _onClickCarro(Carro carro) {
    push(context, CarroPage(carro));
  }
}