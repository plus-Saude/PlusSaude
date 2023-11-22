import 'package:flutter/material.dart';
import 'package:maissaude/Portuguese/resultadoPt.dart';

class MeuForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MeuForm> {
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
        builder: (context) => ResultPage(
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
      backgroundColor: Color.fromARGB(255, 34, 116, 116),
      appBar: AppBar(
        title: Text('Formulário de Sim ou Não'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Você possui a vacina da Febre amarela?'),
            Row(
              children: [
                Text('Sim'),
                Radio<bool>(
                  value: true,
                  groupValue: receberNotificacoes,
                  onChanged: (value) {
                    setState(() {
                      receberNotificacoes = value!;
                    });
                  },
                ),
                Text('Não'),
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
            Text('Você possui a vacina do Sarampo?'),
            Row(
              children: [
                Text('Sim'),
                Radio<bool>(
                  value: true,
                  groupValue: receberAtualizacoes,
                  onChanged: (value) {
                    setState(() {
                      receberAtualizacoes = value!;
                    });
                  },
                ),
                Text('Não'),
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
            Text('Você possui a vacina da Meningite?'),
            Row(
              children: [
                Text('Sim'),
                Radio<bool>(
                  value: true,
                  groupValue: vacinaMeningite,
                  onChanged: (value) {
                    setState(() {
                      vacinaMeningite = value!;
                    });
                  },
                ),
                Text('Não'),
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
              child: Text('Enviar'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Função para limpar os campos
                limparCampos();
              },
              child: Text('Limpar'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/Menu');
              },
              child: Text('Voltar'),
            ),
          ],
        ),
      ),
    );
  }
}
