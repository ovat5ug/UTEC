import 'package:flutter/material.dart';
import 'package:playguan/paginas/variablesGoblales.dart';
import 'package:flutter/painting.dart';

class paginaPrincipal extends StatelessWidget {
  const paginaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 18,
                  horizontal: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment
                      .spaceBetween, //centra el contenido con relacion al espacio entre los contenedores " Column" y "ClipRRect"
                  children: [
                    Column(
                      //contenedor para perfil
                      crossAxisAlignment: CrossAxisAlignment
                          .start, //alinea desde el inicio de la app
                      children: [
                        Text(
                          "Hola Gustavo",
                          style: TextStyle(
                            color: blanco,
                            fontSize: 28,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "contenido",
                          style: TextStyle(
                            color: blanco,
                          ),
                        ),
                      ],
                    ),
                    ClipRRect(
                      //contenedor foto perfil
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        "assets/img/caratulas/anime/2015-11-21 18.48.58.png",
                        height: 60,
                        width: 60,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                //contendor de busqueda
                height: 60,
                padding: EdgeInsets.all(5), //espaciado interno
                margin: EdgeInsets.symmetric(horizontal: 5), //margen externo
                decoration: BoxDecoration(
                    color: grisTransparente,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: blanco,
                      size: 30,
                    ),
                    Container(
                      width: 300,
                      margin: EdgeInsets.only(left: 5),
                      child: TextFormField(
                        style: TextStyle(
                            color: azulSecundario), //texto al escribir
                        decoration: InputDecoration(
                          border: InputBorder.none, //inhabilita subrayado
                          hintText: "Buscar",
                          hintStyle: TextStyle(color: blanco),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ), //altura entre contendores
            ],
          ),
        ),
      ),
    );
  }
}
