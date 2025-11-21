import 'package:flutter/material.dart';

class register extends StatefulWidget {
  const register({super.key});

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  final Color fondo = const Color(0xFFAFDDFF);
  final Color encabezado = const Color(0xFF60B5FF);
  final Color campos = const Color(0xFFAFDDFF);
  final Color boton = const Color(0xFF60B5FF); // Cambié para que se vea bien
  final Color texto = Colors.white;

  final _formKey = GlobalKey<FormState>();

  // Controladores para obtener los valores
  final TextEditingController _usuarioController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _usuarioController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _registrarse() {
    if (_formKey.currentState!.validate()) {
      // Aquí simulas que se guardó el usuario
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("¡Usuario ${_usuarioController.text} registrado con éxito!"),
          backgroundColor: Colors.green,
          duration: Duration(seconds: 2),
        ),
      );

      // Limpiar el formulario
      _usuarioController.clear();
      _emailController.clear();
      _passwordController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fondo,
      appBar: AppBar(
        title: const Text('Registro de Usuario'),
        backgroundColor: encabezado,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              Icon(Icons.person_add, size: 80, color: encabezado),
              const SizedBox(height: 20),

              TextFormField(
                controller: _usuarioController,
                decoration: InputDecoration(
                  labelText: 'Nombre de usuario',
                  filled: true,
                  fillColor: campos,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingrese un nombre de usuario';
                  }
                  if (value.length < 4) {
                    return 'Mínimo 4 caracteres';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 15),

              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Correo electrónico',
                  filled: true,
                  fillColor: campos,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingrese un correo electrónico';
                  }
                  if (!value.contains('@') || !value.contains('.')) {
                    return 'Ingrese un correo válido';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 15),

              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Contraseña',
                  filled: true,
                  fillColor: campos,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingrese una contraseña';
                  }
                  if (value.length < 6) {
                    return 'Mínimo 6 caracteres';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 30),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: boton,
                  foregroundColor: texto,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: _registrarse,
                child: const Text(
                  'Registrarse',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}