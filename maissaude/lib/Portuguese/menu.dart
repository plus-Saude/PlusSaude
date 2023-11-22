import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
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
                Navigator.pushReplacementNamed(context, '/Vacinas');
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(
                    255, 14, 104, 238), // Defina a cor laranja para o botão
              ),
              child: Text('Vacinas'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/Menu');
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(
                    255, 14, 104, 238), // Defina a cor laranja para o botão
              ),
              child: Text('Calendário'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/Posto');
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(
                    255, 14, 104, 238), // Defina a cor laranja para o botão
              ),
              child: Text('Posto de saúde'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/Portuguese');
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(
                    255, 14, 104, 238), // Defina a cor laranja para o botão
              ),
              child: Text('Formulário'),
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
              child: Text('Voltar'),
            ),
          ],
        ),
      ),
    );
  }
}
