import 'package:flutter/material.dart';
import 'mainOption.dart';

class Calculadora extends StatefulWidget {
  const Calculadora({super.key});

  @override
  State<Calculadora> createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  final TextEditingController num1Controller = TextEditingController();
  final TextEditingController num2Controller = TextEditingController();
  double _resultado = 0;

  void _calcular(String op) {
    double num1 = double.tryParse(num1Controller.text) ?? 0;
    double num2 = double.tryParse(num2Controller.text) ?? 0;
    setState(() {
      if (op == "+") _resultado = num1 + num2;
      if (op == "-") _resultado = num1 - num2;
      if (op == "×") _resultado = num1 * num2;
      if (op == "÷") _resultado = (num2 != 0) ? num1 / num2 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[400],
        foregroundColor: Colors.white,
        leading: IconButton(onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MainOption())
          );
        }, icon: Icon(Icons.arrow_back_rounded)),
      ),
      body: Padding(padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Digite los numeros',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,
                              color: Colors.orange[400]),
          ),
          SizedBox(height: 10),
          TextFormField(
            controller: num1Controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              labelText: 'Primer Numero'
            ),
          ),
          SizedBox(height: 10),
          TextFormField(
            controller: num2Controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              labelText: 'Segundo Numero'
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: () => _calcular("+"), child: Text("+"), 
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange[400], shape: CircleBorder(), padding: EdgeInsets.all(16))),
              ElevatedButton(onPressed: () => _calcular("-"), child: Text("-"),
               style: ElevatedButton.styleFrom(backgroundColor: Colors.orange[400], shape: CircleBorder(), padding: EdgeInsets.all(16))),
              ElevatedButton(onPressed: () => _calcular("×"), child: Text("×"), 
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange[400], shape: CircleBorder(), padding: EdgeInsets.all(16))),
              ElevatedButton(onPressed: () => _calcular("÷"), child: Text("÷"), 
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange[400], shape: CircleBorder(), padding: EdgeInsets.all(16))),
            ],
          ),
          SizedBox(height: 20),
          Text('Resultado: $_resultado',style: TextStyle(fontSize: 20,
                                            fontWeight: FontWeight.bold,color: Colors.orange[400]),),
        ],
      ),
      ),
    );
  }
}