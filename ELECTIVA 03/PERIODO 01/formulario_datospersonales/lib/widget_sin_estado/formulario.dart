import 'package:flutter/material.dart';
import 'package:formulario_datospersonales/widget_con_estado/pantalla.dart';

//este paquete contien widget que no varian su estado (sin cambio)
class Formulario extends StatelessWidget {
  const Formulario({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //hay que definir esta seccion para que genere el debido retorno o lo que haremos en el. "MaterialApp()"
      debugShowCheckedModeBanner:
          false, //no muestra barra de "debug" en pantalla
      title: "Datos Personales",
      theme: ThemeData(primarySwatch: Colors.brown),
      home:
          Pantalla(), //en el paquete "Pantalla" estariamos diseñando lo que la appa estaria mostrando
    );
  }
}
