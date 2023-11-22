import 'package:flutter/material.dart';

class VacinasSpcreen extends StatelessWidget {
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
                  'Fiebre amarilla',
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
                  'La fiebre amarilla es una enfermedad viral hemorrágica transmitida por mosquitos infectados. El término “amarillo” hace referencia a la ictericia que presentan algunos pacientes. Los síntomas son: fiebre, dolor de cabeza, ictericia, dolores musculares, náuseas, vómitos y fatiga.',
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
                  'Sarampión',
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
                  'El sarampión es una enfermedad infecciosa grave que se acompaña de fiebre y sarpullido (manchas en el cuerpo). Es una infección altamente contagiosa y está causada por virus de la familia Paramyxoviridae del género Morbillivirus. La enfermedad es común en la infancia y causa un número importante de hospitalizaciones, morbilidad y mortalidad.',
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
                  'El sarampión es una enfermedad infecciosa grave que se acompaña de fiebre y sarpullido (manchas en el cuerpo). Es una infección altamente contagiosa y está causada por virus de la familia Paramyxoviridae del género Morbillivirus. La enfermedad es común en la infancia y causa un número importante de hospitalizaciones, morbilidad y mortalidad.',
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
                  Navigator.pushReplacementNamed(context, '/MenuSp');
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange, // Defina a cor laranja para o botão
                ),
                child: Text('Volver'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
