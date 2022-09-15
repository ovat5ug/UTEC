import 'package:flutter/material.dart';

//este "StatefulWidget" es el que si va a variar
class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
//el guion bajo en la clase denota que su estado sera fijo, como si fuera un valor constante
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //"appBar:" desarrollando el titulo de la app
      appBar: AppBar(
        //elabora parametros vizuales del titulo
        title: Text("contenidos"),
        titleSpacing: 00.0, //espaciado entre texto
        centerTitle: true, //Centrando el titulo
        toolbarHeight: 50, //altura de la barra
        toolbarOpacity: 0.8,
        backgroundColor:
            Color.fromARGB(255, 0, 0, 0), //negro parametros "opacidad",R,G,B
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
          //borderRadius: BorderRadius.circular(30), //genera efeto como tipo boton
        ),
        elevation: 5.0,
      ),
      //"body:" desarrollando el cuerpo de la app
      body: ListView(
        //"Column" me da un es pacio determinado y si se exede corta el contenido, en cambio "ListView" me permite usar scroll para evitar perdidas de espacio
        children: [
          Container(
            color: Color.fromARGB(255, 172, 167, 167),
            padding: EdgeInsets.all(20.0), //incrementa el espacio de trabajo
            child: Image.network(
                "https://c.tenor.com/9E-VRWzIEMgAAAAi/astrodancingps5.gif"),
          ),
          Container(
            color: Color.fromARGB(255, 172, 167, 167),
            padding: EdgeInsets.all(20.0), //incrementa el espacio de trabajo
            child: Image.network(
                "https://c.tenor.com/9E-VRWzIEMgAAAAi/astrodancingps5.gif"),
          ),
          Container(
            color: Color.fromARGB(255, 172, 167, 167),
            padding: EdgeInsets.all(20.0), //incrementa el espacio de trabajo
            child: Image.network(
                "https://c.tenor.com/9E-VRWzIEMgAAAAi/astrodancingps5.gif"),
          ),
        ],
      ),
      /*Center(
        child: Text(
          "prueba",
          style:
              TextStyle(fontSize: 30), //pone un tamaño espesifico a la fuente
        ),
      ),*/
    );
  }
}
