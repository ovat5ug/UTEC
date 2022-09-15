import 'package:flutter/material.dart';
import 'package:formulario_datospersonales/widget_con_estado/pantalla.dart';

Widget edtUsuario() {
  //widget para la caja de texto
  return Container(
    child: TextField(
      decoration: InputDecoration(
          icon: Icon(Icons.account_box),
          hintText: "Ingrese su Usuario",
          fillColor: Colors.amberAccent, //rellana de un color la caja de texto
          filled:
              true, //valida para que, se rellene la caja de texto de un color
          focusColor: Colors.white),
    ), //crea la caja de texto
  );
}

Widget edtCorreo() {
  //widget para la caja de texto
  return Container(
    child: TextField(
      decoration: InputDecoration(
          icon: Icon(Icons.email_rounded),
          hintText: "Ingrese su Correo",
          focusColor: Colors.white),
    ), //crea la caja de texto
  );
}

Widget edtPassword() {
  //widget para la caja de texto
  return Container(
    child: TextField(
      obscureText: true, //no muestra el texto cuando se esta escribiendo
      decoration: InputDecoration(
          icon: Icon(Icons.password),
          hintText: "Ingrese su Contraseña",
          fillColor: Colors.amberAccent, //rellana de un color la caja de texto
          filled:
              true, //valida para que, se rellene la caja de texto de un color
          focusColor: Colors.white),
    ), //crea la caja de texto
  );
}

Widget btnGuardar() {
  return MaterialButton(
    minWidth: double.infinity, //minWidth: 200.0,
    height: 50,
    color: const Color.fromARGB(213, 2, 136, 42),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    onPressed: () {},
    child: const Text(
//tiene que ser definido por la estructura hijo para que el texto salga adentro del boton
      "Enviar(MaterialButton)",
      style: TextStyle(color: Colors.white),
    ),
  ); //fijarse en la jerarquia y no olvidar las comas ó puntos y comas segun sea el caso
}

Widget btnCancelar() {
  return Column(
    children: [
      ElevatedButton(
//tiene que definirse de esta froma para que diuje el boton osea "colum + children"
        onPressed: () {},
        style:
            ElevatedButton.styleFrom(primary: Color.fromARGB(255, 124, 29, 22)),
        child: const Text(
          'Cancelar(ElevatedButton)',
          style: TextStyle(fontSize: 20),
        ),
      ),
      //Text("cancelar")
    ],
  );
}
