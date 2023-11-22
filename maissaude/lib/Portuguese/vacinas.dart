import 'package:flutter/material.dart';

class VacinasScreen extends StatelessWidget {
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
                  'Febre amarela',
                  style: TextStyle(
                    color: Color.fromARGB(255, 212, 243, 154),
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 16),
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'A febre amarela é uma doença hemorrágica viral transmitida por mosquitos infectados. O termo “amarela” se refere à icterícia apresentada por alguns pacientes. Os sintomas são: febre, dor de cabeça, icterícia, dores musculares, náusea, vômitos e fadiga.',
                  style: TextStyle(
                    color: Color.fromARGB(255, 15, 17, 11),
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'Sarampo',
                  style: TextStyle(
                    color: Color.fromARGB(255, 212, 243, 154),
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 16),
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'O sarampo é uma doença infecciosa grave que vem acompanhada de febre e exantema (manchas pelo corpo). É uma infecção altamente contagiosa e é causada por vírus da família Paramyxoviridae do gênero Morbillivirus. A doença é comum na infância e causa um número significativo de hospitalização, morbidade e mortalidade.',
                  style: TextStyle(
                    color: Color.fromARGB(255, 15, 17, 11),
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 16),
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'Meningite',
                  style: TextStyle(
                    color: Color.fromARGB(255, 212, 243, 154),
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 16),
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'A meningite geralmente é causada por uma infecção viral, mas também pode ser de origem bacteriana ou fúngica. As vacinas podem prevenir algumas formas de meningite. Os sintomas incluem dor de cabeça, febre e torcicolo. Dependendo da causa, a meningite pode melhorar com o tempo ou pode ser fatal, necessitando de tratamento antibiótico urgente.',
                  style: TextStyle(
                    color: Color.fromARGB(255, 15, 17, 11),
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/Menu');
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange, // Defina a cor laranja para o botão
                ),
                child: Text('Voltar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
