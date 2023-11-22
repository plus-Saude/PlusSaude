import 'package:flutter/material.dart';

class VacinasEnScreen extends StatelessWidget {
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
                  'Yellow fever',
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
                  'Yellow fever is a viral hemorrhagic disease transmitted by infected mosquitoes. The term “yellow” refers to the jaundice presented by some patients. Symptoms are: fever, headache, jaundice, muscle pain, nausea, vomiting and fatigue.',
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
                  'Measles',
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
                  'Measles is a serious infectious disease that is accompanied by fever and rash (spots on the body). It is a highly contagious infection and is caused by viruses from the Paramyxoviridae family of the Morbillivirus genus. The disease is common in childhood and causes a significant number of hospitalizations, morbidity and mortality.',
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
                  'Meningitis',
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
                  'Measles is a serious infectious disease that is accompanied by fever and rash (spots on the body). It is a highly contagious infection and is caused by viruses from the Paramyxoviridae family of the Morbillivirus genus. The disease is common in childhood and causes a significant number of hospitalizations, morbidity and mortality.',
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
                  Navigator.pushReplacementNamed(context, '/MenuEn');
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange, // Defina a cor laranja para o botão
                ),
                child: Text('Return'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
