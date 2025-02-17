import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3>{
  //vamos a definir una lista vacia
  List<String> list = []; 
  int counter = 0;

  void addElement()
  {
    setState(() 
    {      
      counter++;
      list.add('Elemento $counter');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pantalla 3'),
      ),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          final element = list[index];
          return ListTile(
            leading: Icon(Icons.search),
            title: Text(element)            
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addElement,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}