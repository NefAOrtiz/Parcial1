import 'package:flutter/material.dart';
import 'contact_screen.dart';

class PersonalDataScreen extends StatelessWidget {
  final String nombre;
  final List<String> hobbies;

  PersonalDataScreen({required this.nombre, required this.hobbies});

  final String descripcion =
      'Soy estudiante de la carrera Desarrollo de Apps Multiplataforma en la universidad PUCMM.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Datos Personales'),
        backgroundColor: Color.fromARGB(255, 77, 134, 241),
      ),
      backgroundColor: Color(0xFFF0F0F0),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          elevation: 6,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hola, $nombre',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  SizedBox(height: 16),

                  Text(
                    'Descripción',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    descripcion,
                    style: TextStyle(fontSize: 16),
                  ),

                  SizedBox(height: 20),

                  Text(
                    'Hobbies',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey,
                    ),
                  ),
                  ...hobbies.map((hobby) => Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text(
                          '• $hobby',
                          style: TextStyle(fontSize: 16),
                        ),
                      )),

                  SizedBox(height: 30),

                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 16, 92, 234),
                        foregroundColor: const Color.fromARGB(255, 0, 0, 0), // Color del texto del botón
                        padding:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        textStyle: TextStyle(fontSize: 16),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ContactScreen(
                              correo: 'nefar.ortiz@gmail.com',
                              telefono: '829-111-1111',
                            ),
                          ),
                        );
                      },
                      child: Text('Ver contacto'),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


