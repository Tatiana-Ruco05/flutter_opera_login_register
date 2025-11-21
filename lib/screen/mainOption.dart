import 'package:flutter/material.dart';
import 'add.dart';

class MainOption extends StatefulWidget {
  const MainOption({super.key});

  @override
  State<MainOption> createState() => _MainOptionState();
}

class _MainOptionState extends State<MainOption> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Operaciones Aritmeticas, Login y Registro',
        style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.orange[400],
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          SizedBox(height: 16),
          Image.network("https://picsum.photos/330/200"),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                title: Text("Suma"),
                leading: Icon(Icons.add),
                trailing: Icon(Icons.arrow_circle_right_outlined),
                onTap: (){
                  print('Presionaste Suma');
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder:  (context) => add())
                  );
                },),
            ),
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                title: Text("Division"),
                leading: Icon(Icons.add),
                trailing: Icon(Icons.arrow_circle_right_outlined),
                onTap: (){
                  print('Presionaste Suma');
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder:  (context) => add())
                  );
                },),
            ),
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                title: Text("Calculadora"),
                leading: Icon(Icons.add),
                trailing: Icon(Icons.arrow_circle_up_outlined),
                onTap: (){
                  
                  print('Presionaste Calculadora');
                },),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                title: Text("Registro"),
                leading: Icon(Icons.add),
                trailing: Icon(Icons.arrow_circle_up_outlined),
                onTap: (){
                  print('Presionaste Registro');
                },),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                title: Text("Login"),
                leading: Icon(Icons.add),
                trailing: Icon(Icons.arrow_circle_up_outlined),
                onTap: (){
                  print('Presionaste Login');
                },),
            ),
          )
        ],
      ),
    );
  }
}