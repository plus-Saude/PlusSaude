import 'package:flutter/material.dart';

class MenuSpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 34, 116, 116),
      body: Center(
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
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/VacinasSp');
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(
                    255, 14, 104, 238), // Defina a cor laranja para o botão
              ),
              child: Text('Vacunas'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/MenuSp');
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(
                    255, 14, 104, 238), // Defina a cor laranja para o botão
              ),
              child: Text('Calendario'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/PostoSp');
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(
                    255, 14, 104, 238), // Defina a cor laranja para o botão
              ),
              child: Text('Centro de salud'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/Spanish');
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(
                    255, 14, 104, 238), // Defina a cor laranja para o botão
              ),
              child: Text('Formulario'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/main');
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(
                    255, 14, 104, 238), // Defina a cor laranja para o botão
              ),
              child: Text('Volver'),
            ),
          ],
        ),
      ),
    );
  }
}
