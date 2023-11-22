import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
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
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                'Select language to proceed',
                style: TextStyle(
                  color: const Color.fromARGB(255, 187, 132, 49),
                  fontSize: 26,
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
                primary: Color.fromARGB(
                    255, 14, 104, 238), // Defina a cor laranja para o botão
              ),
              child: Text('English'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/MenuSp');
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.orange, // Defina a cor laranja para o botão
              ),
              child: Text('Spanish'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/Menu');
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(
                    255, 14, 151, 33), // Defina a cor laranja para o botão
              ),
              child: Text('Portuguese'),
            ),
          ],
        ),
      ),
    );
  }
}
