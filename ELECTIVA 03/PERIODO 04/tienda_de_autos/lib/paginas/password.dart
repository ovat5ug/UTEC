// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Password extends StatefulWidget {
  late var labelText;
  late var hintText;
  Icon passwordIcon;

  Password({
    Key? key,
    required this.labelText,
    required this.hintText,
    required this.passwordIcon,
  }) : super(key: key);

  @override
  State<Password> createState() => _PasswordState(labelText, hintText, passwordIcon);
}

class _PasswordState extends State<Password> {
  var labelText;
  var hintText;
  Icon? passwordIcon;
  
  _PasswordState(this.labelText, this.hintText, this.passwordIcon);

  bool showPassword = true;
  Icon visOn = Icon(
    Icons.visibility,
    color: Colors.white,
  );
  Icon visOff = Icon(
    Icons.visibility_off,
    color: Colors.white,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 10.0, right: 10.0),
        child: TextField(
          cursorColor: Colors.green,
          style: TextStyle(color: Colors.white),
          obscureText: showPassword,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            prefixIcon: passwordIcon,
            suffixIcon: IconButton(
              icon: showPassword ? visOff : visOn,
              onPressed: (){
                setState(() {
                  showPassword = !showPassword;
                });
              },
            ),
            labelText: labelText,
            labelStyle: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
            alignLabelWithHint: true,
            hintText: hintText,
            hintStyle: TextStyle(
              color: Colors.white38,
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                width: 2,
                color: Colors.green
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                width: 2,
                color: Colors.green
              ),
            ),
          ),
        ),
    );
  }
}