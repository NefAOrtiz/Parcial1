import 'package:flutter/material.dart';
import 'personal_data_screen.dart';

class WelcomeScreen extends StatelessWidget {
  final String nombre = 'Nef A. Ortiz Caraballo';
  final String matricula = '10157290';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255), // Fondo blanco
      appBar: AppBar(
        title: Text('Bienvenida'),
        backgroundColor: Color.fromARGB(255, 77, 134, 241), // Azul claro
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Imagen redonda
            CircleAvatar(
              radius: 75,
              backgroundImage: AssetImage('assets/foto.jpeg'),
            ),
            SizedBox(height: 30),

            // Nombre
            Text(
              'Nombre: $nombre',
              style: TextStyle(
                fontSize: 24,
                color: const Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10),

            // Matrícula
            Text(
              'Matrícula: $matricula',
              style: TextStyle(
                fontSize: 20,
                color: const Color.fromARGB(179, 0, 0, 0),
              ),
            ),

            SizedBox(height: 40),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 1, 108, 230), // Fondo botón
                foregroundColor: Colors.black, // Color texto botón
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                textStyle: TextStyle(fontSize: 18),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PersonalDataScreen(
                      nombre: nombre,
                      hobbies: ['Comer', 'Anime', 'Jugar voleibol'],
                    ),
                  ),
                );
              },
              child: Text('Ver datos personales'),
            ),
          ],
        ),
      ),
    );
  }
}
