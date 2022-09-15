import 'package:flutter/material.dart';
import 'package:formulario_datospersonales/componentes/componentes.dart';
//este paquete contien widget que si varian su estado (con cambio)

class Pantalla extends StatefulWidget {
  const Pantalla({Key? key}) : super(key: key);

  @override
  State<Pantalla> createState() => _PantallaState();
}

class _PantallaState extends State<Pantalla> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Datos Personales(AppBar)",
          style: TextStyle(color: Colors.grey),
        ),
      ),
//hay que definir esta seccion para que genere el debido retorno o lo que haremos en el. "Scaffold()"
//habiendo definido el "MaterialApp();" en el formulario el "Scaffold();" comienza a dibujar el diseño
      body: SafeArea(
//dibuja un espacio en donde comenzaremos a trazar el lienzo para el formulario en la parte interna
          child: Container(
        //se crea este contenedor para
        width: double.infinity, //se personaliza segun el ancho de la pantalla,
        //no se puede centrar directamente el texto de las columnas
        height: MediaQuery.of(context).size.height, //MediaQuery, determinara
        //la altura segun el contexto y se personaliza segun el alto de la pantalla
//"width: double.infinity," y "height: MediaQuery.of(context).size.height," hacen responsiva la
//pantalla en este caso
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
        //espaciado simtrico (margenes)
        child: Column(
          children: [
            Column(
              //se crea esta columna a partir de text para introducir todos los datos en una columna
              crossAxisAlignment: CrossAxisAlignment
                  .center, //se centra todas las columnas hijass
              children: [
                Text(
                  "Datos personales(body)",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                edtUsuario(),
                SizedBox(
                  height: 10,
                ),
                edtCorreo(),
                SizedBox(
                  height: 10,
                ),
                edtPassword(),
                SizedBox(
                  height: 10,
                ),
                btnGuardar(),
                SizedBox(
                  height: 10,
                ),
                btnCancelar(),
              ],
            )
          ],
        ),
      )),
    );
  }
}
