import 'package:flutter/material.dart';
import 'package:maissaude/Spanish/resultadoSp.dart';

class MiForma extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MiForma> {
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
        builder: (context) => ResultPageSp(
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
        title: Text('Formulario de Sí o No'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('¿Tiene la vacuna contra la fiebre amarilla ?'),
            Row(
              children: [
                Text('Sí'),
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
            Text('¿Tiene la vacuna contra el sarampión ?'),
            Row(
              children: [
                Text('Sí'),
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
            Text('¿Tiene la vacuna contra la meningitis ?'),
            Row(
              children: [
                Text('Sí'),
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
              child: Text('Mandar'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Função para limpar os campos
                limparCampos();
              },
              child: Text('Limpíar'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/MenuSp');
              },
              child: Text('Volver a la pantalla principal'),
            ),
          ],
        ),
      ),
    );
  }
}
