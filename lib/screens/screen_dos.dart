import 'package:flutter/material.dart';


class Screen2 extends StatefulWidget {

  const Screen2({super.key});
    
  @override
  State<Screen2> createState() => _Screen2State();

}

class _Screen2State extends State<Screen2>{
  int _counter = 0;

  void _incrementCounter() 
  {
    setState(() 
    {      
      _counter++;
    });
  }

  void _decrementCounter() 
  {
    setState(() 
    {      
      _counter--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pantalla 2'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Contador: $_counter", style: TextStyle(fontSize: 20)),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [                        
            ElevatedButton.icon(               
              label: Text('Disminuir'),
              icon: Icon(Icons.remove_circle),
              onPressed: () {
                _decrementCounter();
              },
            ),

            ElevatedButton.icon(               
              label: Text('Aumentar'),
              icon: Icon(Icons.add_circle),
              onPressed: () {
                _incrementCounter();
              },
            ),
          ],
        ),
        ]
        
      ),
    );
  }
}
