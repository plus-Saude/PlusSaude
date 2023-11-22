import 'package:flutter/material.dart';

class ResultPageEn extends StatelessWidget {
  final bool? receberNotificacoes;
  final bool? receberAtualizacoes;
  final bool? vacinaMeningite;

  ResultPageEn({
    required this.receberNotificacoes,
    required this.receberAtualizacoes,
    required this.vacinaMeningite,
  });

  String _getSimOuNao(bool? value) {
    return value == true ? 'Yes' : 'No';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Results'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('These are the vaccines you need to get:'),
            SizedBox(height: 16.0),
            if (receberNotificacoes == false)
              Text('There is no yellow fever vaccine'),
            if (receberAtualizacoes == false) Text('No Measles vaccine'),
            if (vacinaMeningite == false)
              Text('There is no Meningitis vaccine'),
          ],
        ),
      ),
    );
  }
}
