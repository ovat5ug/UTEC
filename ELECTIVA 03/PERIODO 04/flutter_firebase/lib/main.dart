//$flutter pub add firebase_core ultimo paso para poder añadir configuración de
//firebase en conexión con el proyecto de flutter
//$flutter pub add cloud_firestore ultimo paso para poder añadir configuración de
//firebase en conexión con el proyecto de flutter con la nube
//flutterfire configure con este comando configurara el proyecto automaticamente

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/firebase_options.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final db = FirebaseFirestore.instance;
    final doc = db.doc("/usuarios/Hm4VVID0QeDOWklvzFgZ");
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
            stream: doc.snapshots(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return const CircularProgressIndicator();
              }
              final docsnap = snapshot.data!;
              return Text(docsnap['nombre'] ?? "<sin datos>");
            },
          ),
        ),
      ),
    );
  }
}
