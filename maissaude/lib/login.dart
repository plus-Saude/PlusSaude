import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Color.fromARGB(255, 34, 116, 116), // Defina a cor de fundo como azul
      body: Padding(
        padding:
            const EdgeInsets.only(top: 50), // Adiciona um espaçamento superior
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'Mais',
                  style: TextStyle(
                    color: Color.fromARGB(255, 212, 243, 154),
                    fontSize: 52,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'Saúde',
                  style: TextStyle(
                    color: Color.fromARGB(255, 212, 243, 154),
                    fontSize: 52,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Welcome',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/main');
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange, // Defina a cor laranja para o botão
                ),
                child: Text('Access'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
