import 'package:fje/home.dart';
import 'package:fje/register.dart';
import 'package:fje/signin.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(initialRoute: 'login', routes: {
    'login': (context) => SignIn(),
    'register': (context) => Register()
  }));
}
