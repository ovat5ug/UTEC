// ignore_for_file: public_member_api_docs, sort_constructors_first
//flutter clean limpiar dependencias gradler antiguas y de mas
//flutter pub get instalar dependencias gradler y demas
import 'dart:ui';

import 'package:flutter/material.dart';

class Usuario extends StatelessWidget {
  Icon prefixIcon;
  String labelText;
  String hintText;
  Usuario({
    Key? key,
    required this.prefixIcon,
    required this.labelText,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10.0, right: 10.0),
      child: TextField(
        cursorColor: Colors.green,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          prefixIcon: prefixIcon,
          labelText: labelText,
          labelStyle: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
          alignLabelWithHint: true,
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.white38,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.green),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.green),
          ),
        ),
      ),
    );
  }
}
