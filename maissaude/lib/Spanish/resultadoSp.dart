import 'package:flutter/material.dart';

class ResultPageSp extends StatelessWidget {
  final bool? receberNotificacoes;
  final bool? receberAtualizacoes;
  final bool? vacinaMeningite;

  ResultPageSp({
    required this.receberNotificacoes,
    required this.receberAtualizacoes,
    required this.vacinaMeningite,
  });

  String _getSimOuNao(bool? value) {
    return value == true ? 'Sí' : 'No';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resultados del formulario'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Estas son las vacunas que debes ponerte:'),
            SizedBox(height: 16.0),
            if (receberNotificacoes == false)
              Text('No existe vacuna contra la fiebre amarilla'),
            if (receberAtualizacoes == false)
              Text('Sin vacuna contra el sarampión'),
            if (vacinaMeningite == false)
              Text('No existe vacuna contra la meningitis'),
          ],
        ),
      ),
    );
  }
}
