import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final bool? receberNotificacoes;
  final bool? receberAtualizacoes;
  final bool? vacinaMeningite;

  ResultPage({
    required this.receberNotificacoes,
    required this.receberAtualizacoes,
    required this.vacinaMeningite,
  });

  String _getSimOuNao(bool? value) {
    return value == true ? 'Sim' : 'Não';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resultados do Formulário'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Essas são as vacinas que você necessita tomar:'),
            SizedBox(height: 16.0),
            if (receberNotificacoes == false)
              Text('Não possui vacina da Febre amarela'),
            if (receberAtualizacoes == false)
              Text('Não possui vacina do Sarampo'),
            if (vacinaMeningite == false)
              Text('Não possui vacina da Meningite'),
          ],
        ),
      ),
    );
  }
}
