import 'package:flutter/material.dart';

class Mainoption extends StatefulWidget {
  const Mainoption({super.key});

  @override
  State<Mainoption> createState() => _MainoptionState();
}

class _MainoptionState extends State<Mainoption> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Operaciones Aritmeticas Login Register'),
        backgroundColor: Colors.orange[400],
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          SizedBox(height: 16),
          Image.network("https://picsum.photos/330/150"),
          SizedBox(height: 16),
          Card(
            child: ListTile(
              title: Text('Suma'),
              leading: Icon(Icons.add),
              trailing: Icon(Icons.arrow_circle_up_outlined),
              onTap: () {
                print('presiono boton suma');
              },
            ),
          ),
          SizedBox(height: 16),
          Card(
            child: ListTile(
              title: Text('Calculadora'),
              leading: Icon(Icons.add),
              trailing: Icon(Icons.arrow_circle_up_outlined),
              onTap: () {
                print('presiono boton calculadora');
              },
            ),
          ),
          SizedBox(height: 16),
          Card(
            child: ListTile(
              title: Text('Registro'),
              leading: Icon(Icons.add),
              trailing: Icon(Icons.arrow_circle_up_outlined),
              onTap: () {
                print('presiono boton registro');
              },
            ),
          ),
          SizedBox(height: 16),
          Card(
            child: ListTile(
              title: Text('Login'),
              leading: Icon(Icons.add),
              trailing: Icon(Icons.arrow_circle_up_outlined),
              onTap: () {
                print('presiono boton login');
              },
            ),
          ),
        ],
      ),
    );
  }
}
