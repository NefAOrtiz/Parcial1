import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  final String correo;
  final String telefono;

  ContactScreen({required this.correo, required this.telefono});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contacto')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Correo: $correo', style: TextStyle(fontSize: 18)),
            Text('Teléfono: $telefono', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
