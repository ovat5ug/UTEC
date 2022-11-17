import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tienda_de_autos/paginas/password.dart';
import 'package:tienda_de_autos/paginas/principal.dart';
import 'package:tienda_de_autos/paginas/registro_usuario.dart';
import 'package:tienda_de_autos/paginas/usuario.dart';


class InicioSesion extends StatefulWidget {
  const InicioSesion({super.key});

  @override
  State<InicioSesion> createState() => _InicioSesionState();
}

class _InicioSesionState extends State<InicioSesion> {
  Icon emailIcon = Icon(
    Icons.email,
    color: Colors.green,
  );
  Icon passwordIcon = Icon(
    Icons.security,
    color: Colors.green,
  );
  double val = 0;
  bool switchScreen = true;
  int x = 0;
  Timer timer = Timer(Duration(seconds: 1), (){});
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: val),
      duration: Duration(seconds: 1),
      builder: (_, value, child) => Transform(
        transform: Matrix4.identity()
        ..setEntry(3, 2, 0.001)
        ..rotateY(value),
        child: child,
        alignment: Alignment.bottomCenter,
      ),
      child: switchScreen?
      
      Container(
        height: MediaQuery.of(context).size.height * 0.8,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.green,
              Colors.black,
              Colors.black,
            ],
          ),
          borderRadius: BorderRadius.circular(55.0),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 100,
              width: 200,
              child: Center(
                child: Text(
                  "INICIO DE SESIÓN",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // Mandamos a llamar a usuario.dart
            Usuario(
              hintText: 'Ingresar Correo Electronico.....',
              labelText: 'CORREO ELECTRONICO',
              prefixIcon: emailIcon,
            ),
            SizedBox(
              height: 20,
            ),
            // Mandamos a llamar a password.dart
            Password(
                labelText: 'CONTRASEÑA', hintText: 'Ingresar Contraseña.....', passwordIcon: passwordIcon),
    
            SizedBox(
              height: 50,
            ),
    
            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                        val = pi;
                        timer = Timer(Duration(milliseconds: 500), (){
                          setState(() {
                            switchScreen = false;
                            x=2;
                          });
                        });
                      });
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => RegistroUsuario(),));
                },
                child: Text(
                  'ACCEDER',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '¡ NO TIENES UNA CUENTA !',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                TextButton(
                    onPressed: () {
                      setState(() {
                        val = pi;
                        timer = Timer(Duration(milliseconds: 500), (){
                          setState(() {
                            switchScreen = false;
                            x=1;
                          });
                        });
                      });
                    },
                    child: Text(
                      'REGISTRATE AHORA',
                      style: TextStyle(
                        color: Colors.green,
    
                      ),
                    )),
              ],
            ),
          ],
        ),
      ) : Opciones(),
    );
  }
  Widget Opciones(){
    if(switchScreen == false && x==1){
      return RegistroUsuario();
    }
    else if(switchScreen == false && x==2){
      return Principal();
    }
    else{
      return InicioSesion();
    }
  }
}


