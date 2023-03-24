import 'package:flutter/material.dart';

class success_screen extends StatefulWidget {
  const success_screen({Key? key}) : super(key: key);

  @override
  State<success_screen> createState() => _success_screenState();
}

class _success_screenState extends State<success_screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
            child: Text(
          "Log in successfully",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black),
        )),
      ),
    );
  }
}
