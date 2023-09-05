import 'package:flutter/material.dart';
import 'package:maissaude/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '+Saude',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/',
      routes: {'/': (context) => LoginPage()},
    );
  }
}
