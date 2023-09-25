import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulário de Sim ou Não'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Você possui a vacina da febre amarela?'),
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
            Text('Você possui a vacina do sarampo?'),
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
              onPressed: () {
                // Implemente a lógica para enviar o formulário aqui
                print('Receber notificações: $receberNotificacoes');
                print('Receber atualizações por email: $receberAtualizacoes');
              },
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
                Navigator.pushReplacementNamed(context, '/main');
              },
              child: Text('Voltar a tela principal'),
            ),
          ],
        ),
      ),
    );
  }
}
