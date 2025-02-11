import 'package:flutter/material.dart';
import 'screens/screen_uno.dart'; // Importa Screen1
import 'screens/screen_dos.dart'; // Importa Screen2
import 'screens/screen_tres.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recordando Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      routes: {
        '/screen1': (context) => Screen1(),
        '/screen2': (context) => Screen2(),
        '/screen3': (context) => Screen3(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/screen1');
              },
              child: Text('Ir a Pantalla 1'),
            ),
            SizedBox(height: 20), // Espacio entre botones
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/screen2');
              },
              child: Text('Ir a Pantalla 2'),
            ),
            SizedBox(height: 20), // Espacio entre botones
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/screen3');
              },
              child: Text('Ir a Pantalla 3'),
            ),
          ],
        ),
      ),
    );
  }
}
