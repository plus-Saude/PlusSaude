import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu principal'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/');
              },
              child: Text('Logout'),
            ),
            SizedBox(height: 16), // Espaçamento entre os botões
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/English');
              },
              child: Text('English'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/Spanish');
              },
              child: Text('Spanish'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/Portuguese');
              },
              child: Text('Portuguese'),
            )
          ],
        ),
      ),
    );
  }
}
