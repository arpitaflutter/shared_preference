import 'package:flutter/material.dart';
import 'package:shared_preference/screens/sighIn/view/sighIn_screen.dart';
import 'package:shared_preference/screens/sighUp/view/sighUp_screen.dart';
import 'package:shared_preference/screens/success/view/success_screen.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => signIn_screen(),
        'signUp':(context) => signUp_screen(),
        'success':(context) => success_screen(),
      },
    ),
  );
}