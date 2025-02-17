import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pantalla 1'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.red,
                width: 100,
                height: 100,
              ),
              Container(
                color: Colors.blue,
                width: 100,
                height: 100,
              ),
            ],
          ),

          Stack(
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                  color: Colors.green,
                  width: 400,
                  height: 100,
                ),
              ),
              
              Padding(padding: EdgeInsets.all(20),
                child: Text(
                  '¡Hola soy un texto superpuesto!', 
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              ),
            ],
            
          ),

          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              print('Home');
            },
          ),

          ListTile(
            leading: Icon(Icons.search),
            title: Text('Buscador'),
            onTap: () {
              print('Buscador');
            },
          ),

          
        ]

      ),
    );
  }
}