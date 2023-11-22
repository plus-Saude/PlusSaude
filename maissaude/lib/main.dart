import 'package:flutter/material.dart';
import 'package:maissaude/English/PostoEn.dart';
import 'package:maissaude/English/formsEn.dart';
import 'package:maissaude/English/menuEn.dart';
import 'package:maissaude/English/vacinasEn.dart';
import 'package:maissaude/Portuguese/menu.dart';
import 'package:maissaude/Portuguese/posto.dart';
import 'package:maissaude/Portuguese/vacinas.dart';
import 'package:maissaude/Spanish/formsSp.dart';
import 'package:maissaude/Spanish/menuSp.dart';
import 'package:maissaude/Spanish/postoSp.dart';
import 'package:maissaude/Spanish/vacinasSp.dart';
import 'package:maissaude/login.dart';
import 'package:maissaude/telaPrincipal.dart';
import 'package:maissaude/Portuguese/formsPt.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '+Saude',
        theme: ThemeData(),
        initialRoute: '/',
        routes: {
          '/': (context) => WelcomeScreen(),
          '/main': (context) => MainScreen(),
          '/Menu': (context) => MenuScreen(),
          '/MenuEn': (context) => MenuEnScreen(),
          '/VacinasEn': (context) => VacinasEnScreen(),
          '/PostoEn': (context) => LinkEnScreen(),
          '/MenuSp': (context) => MenuSpScreen(),
          '/VacinasSp': (context) => VacinasSpcreen(),
          '/PostoSp': (context) => LinkSpScreen(),
          '/Vacinas': (context) => VacinasScreen(),
          '/Posto': (context) => LinkScreen(),
          '/English': (context) => MyForm(),
          '/Spanish': (context) => MiForma(),
          '/Portuguese': (context) => MeuForm(),
        });
  }
}
