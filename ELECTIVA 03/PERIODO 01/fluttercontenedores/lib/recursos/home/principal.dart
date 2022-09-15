import 'package:flutter/material.dart';

class Principal extends StatefulWidget {
  Principal({Key? key}) : super(key: key);

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Contenidos"),
          titleSpacing: 00.0,
          centerTitle: true,
          toolbarHeight: 50,
          toolbarOpacity: 0.8,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(25),
                  bottomLeft: Radius.circular(25))),
          elevation: 8.0,
          backgroundColor: Colors.black,
        ),
        body: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              child: Image.network(
                  "https://img.freepik.com/vector-premium/codigo-geek-dibujos-animados_10308-205.jpg?w=740"),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Image.asset("assets/img/images.jpg"),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Image.network(
                  "https://img.freepik.com/vector-premium/codigo-geek-dibujos-animados_10308-205.jpg?w=740"),
            ),
          ],
        ) /*Center(
          child: Text(
        "Prueba",
        style: TextStyle(fontSize: 30),
      )
      ),*/
        );
  }
}
