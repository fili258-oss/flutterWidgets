import 'package:flutter/material.dart';


class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pantalla 2'),
      ),
      body: Center(
        child: Text('¡Estás en la Pantalla 2!'),
      ),
    );
  }
}
