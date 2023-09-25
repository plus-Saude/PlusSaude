import 'package:flutter/material.dart';
import 'package:maissaude/English/formsEn.dart';
import 'package:maissaude/Spanish/formsSp.dart';
import 'package:maissaude/login.dart';
import 'package:maissaude/telaPrincipal.dart';
import 'package:maissaude/Portuguese/formsPt.dart';

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
        routes: {
          '/': (context) => LoginPage(),
          '/main': (context) => MainScreen(),
          '/English': (context) => MyForm(),
          '/Spanish': (context) => MiForma(),
          '/Portuguese': (context) => MeuForm(),
        });
  }
}
