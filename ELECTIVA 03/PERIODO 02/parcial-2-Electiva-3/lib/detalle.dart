import 'package:flutter/material.dart';

class detalle extends StatefulWidget {
  detalle({Key? key}) : super(key: key);

  @override
  State<detalle> createState() => _detalleState();
}

class _detalleState extends State<detalle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 235, 92, 187),
      appBar: AppBar(
        elevation: 0,
        actions: [
          const Text(
            "EN MANTENIMIENTO",
            style: TextStyle(
              color: Color.fromARGB(255, 255, 253, 253),
              fontSize: 23.0,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.3,
            ),
          ),
          IconButton(
              icon: Icon(
                Icons.shopping_bag,
                color: Colors.white,
              ),
              onPressed: null)
        ],
      ),
    );
  }
}
