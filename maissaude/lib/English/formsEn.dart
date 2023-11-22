import 'package:flutter/material.dart';
import 'package:maissaude/English/resultadoEn.dart';

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  bool? receberNotificacoes;
  bool? receberAtualizacoes;
  bool? vacinaMeningite;

  void limparCampos() {
    setState(() {
      receberNotificacoes = null;
      receberAtualizacoes = null;
      vacinaMeningite = null;
    });
  }

  void _enviarFormulario() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultPageEn(
          receberNotificacoes: receberNotificacoes,
          receberAtualizacoes: receberAtualizacoes,
          vacinaMeningite: vacinaMeningite,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yes or No Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Do you have the Yellow Fever vaccine ?'),
            Row(
              children: [
                Text('Yes'),
                Radio<bool>(
                  value: true,
                  groupValue: receberNotificacoes,
                  onChanged: (value) {
                    setState(() {
                      receberNotificacoes = value!;
                    });
                  },
                ),
                Text('No'),
                Radio<bool>(
                  value: false,
                  groupValue: receberNotificacoes,
                  onChanged: (value) {
                    setState(() {
                      receberNotificacoes = value!;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Text('Do you have the Measles vaccine ?'),
            Row(
              children: [
                Text('Yes'),
                Radio<bool>(
                  value: true,
                  groupValue: receberAtualizacoes,
                  onChanged: (value) {
                    setState(() {
                      receberAtualizacoes = value!;
                    });
                  },
                ),
                Text('No'),
                Radio<bool>(
                  value: false,
                  groupValue: receberAtualizacoes,
                  onChanged: (value) {
                    setState(() {
                      receberAtualizacoes = value!;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Text('Do you have the Meningitis vaccine ?'),
            Row(
              children: [
                Text('Yes'),
                Radio<bool>(
                  value: true,
                  groupValue: vacinaMeningite,
                  onChanged: (value) {
                    setState(() {
                      vacinaMeningite = value!;
                    });
                  },
                ),
                Text('No'),
                Radio<bool>(
                  value: false,
                  groupValue: vacinaMeningite,
                  onChanged: (value) {
                    setState(() {
                      vacinaMeningite = value!;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _enviarFormulario,
              child: Text('Send'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Função para limpar os campos
                limparCampos();
              },
              child: Text('Clean'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/MenuEn');
              },
              child: Text('Return to main screen'),
            ),
          ],
        ),
      ),
    );
  }
}
