import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkSpScreen extends StatelessWidget {
  final List<Map<String, String>> links = [
    {
      'label': 'Centro de salud Jurunas',
      'url': 'https://maps.app.goo.gl/kqTGcUFjHSr1nEmo8',
    },
    {
      'label': 'Centro de salud Pedreira',
      'url':
          'https://www.google.com/maps/dir//Av.+Pedro+Miranda,+1346+-+Pedreira,+Bel%C3%A9m+-+PA,+66080-971/@-1.4280181,-48.5541998,12z/data=!4m8!4m7!1m0!1m5!1m1!1s0x92a48bf97817ecd9:0xc2361db27a24dc70!2m2!1d-48.4718082!2d-1.4280127?entry=ttu',
    },
    {
      'label': 'Centro de salud Sacramenta',
      'url': 'https://maps.app.goo.gl/8s96KxcvhNfMVGTbA',
    },
    {
      'label': 'Centro de salud Cidade nova',
      'url': 'https://maps.app.goo.gl/BkVtTAk2kYjACUFPA',
    },
    {
      'label': 'Centro de salud Marambaia',
      'url': 'https://maps.app.goo.gl/R6vzvwbxUwcPPyyGA',
    },
  ];

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Não foi possível abrir o link $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 34, 116, 116),
      appBar: AppBar(
        title: Text('Centro de salud'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Elija uno de los centros de salud a continuación:',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            for (var link in links)
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      _launchURL(link['url']!);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 14, 104,
                          238), // Defina a cor laranja para o botão
                    ),
                    child: Text(
                      link['label']!,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/MenuSp');
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
