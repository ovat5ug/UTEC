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
          titleSpacing: 10.0,
          centerTitle: true,
          toolbarHeight: 50,
          toolbarOpacity: 0.8,
          elevation: 8.0,
          backgroundColor: Colors.black,
        ),
        body: ListView(
          children: <Widget>[
            Column(
              children: [
                Text("PARCIAL I-ETPS3!"),
              ],
            ),
            Container(
              margin: EdgeInsets.all(0.0),
              width: 200,
              height: 200,
              child: Image.asset("assets/img/astrodancingps5.gif"),
            ),
            Column(
              children: [
                Text("LUIS GUSTAVO PÉREZ ALBERTO"),
                Text("25-4879-2006"),
                Text("NO ES MUCHO PERO ES"),
                Text("UN TRABAJO HONRADO XD"),
              ],
            ),
            Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      hintText: 'Carné',
                      labelText: "Ingrese su número de Carne",
                      prefixIcon: Icon(Icons.numbers)),
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      hintText: 'Ingrese su nombre',
                      labelText: "Ingrese su nombre",
                      prefixIcon: Icon(Icons.person)),
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      hintText: 'Ingrese su Apellido',
                      labelText: "Ingrese su Apellido",
                      prefixIcon: Icon(Icons.person)),
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      hintText: 'Ingrese su Usuario',
                      labelText: "Ingrese su Usuario",
                      prefixIcon: Icon(Icons.email)),
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      hintText: 'Ingrese su Direccion',
                      labelText: "Ingrese su Direccion",
                      prefixIcon: Icon(Icons.format_textdirection_r_to_l)),
                  //maxLines: 20,
                  maxLength: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      hintText: 'Ingrese su Password',
                      labelText: "Ingrese su Password",
                      prefixIcon: Icon(Icons.security)),
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      hintText: 'Ingrese su RePassword',
                      labelText: "Ingrese su REPassword",
                      prefixIcon: Icon(Icons.security)),
                ),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 39, 30, 158)),
                      child: const Text(
                        'Ingresar',
                        style: TextStyle(fontSize: 20),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 124, 29, 22)),
                      child: const Text(
                        'Cancelar',
                        style: TextStyle(fontSize: 20),
                      ),
                    )
                  ],
                ),
              ],
            )
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
