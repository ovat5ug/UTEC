import 'package:animated_splash_screen/animated_splash_screen.dart'; //flutter pub add animated_splash_screen.dart
import 'package:lottie/lottie.dart'; // flutter pub add lottie
import 'package:page_transition/page_transition.dart'; //flutter pub add page_transition
import 'package:flutter/material.dart';
import 'package:tienda_de_autos/paginas/inicio_sesion.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SplashPantalla(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashPantalla extends StatelessWidget {
  const SplashPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Lottie.asset('json/93387-car-insurance-offers-loading-page.json'),
      backgroundColor: Colors.lightGreen,
      nextScreen: const MyHomePage(),
      splashIconSize: 350,
      duration: 3000,
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.leftToRightWithFade,
      animationDuration: const Duration(seconds: 3),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      /*appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "AUTO - STORE",
                style: TextStyle(
                    fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Icon(Icons.menu), 
            ], 
          ),
        ),
      ),*/
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.green,
              Colors.black,
              Colors.black,
              Colors.black,
              Colors.black,
              Colors.black,
              Colors.green,
            ],
          ),
          borderRadius: BorderRadius.circular(55.0),
        ),
        child: Center(
          child: InicioSesion(),
        ),
      ),
    );
  }
}
