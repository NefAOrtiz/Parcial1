import 'package:flutter_test/flutter_test.dart';
import 'package:parcial1/main.dart'; // Asegúrate que 'parcial1' es el nombre de tu proyecto

void main() {
  testWidgets('App muestra pantalla de bienvenida y navega a datos personales',
      (WidgetTester tester) async {
    // Construye la app
    await tester.pumpWidget(const MyApp());

    // Verifica que el texto de bienvenida esté presente
    expect(find.text('Nombre: Nef A. Ortiz Caraballo'), findsOneWidget);
    expect(find.text('Matrícula: 10157290'), findsOneWidget);

    // Busca y toca el botón para ir a datos personales
    final boton = find.text('Ver datos personales');
    expect(boton, findsOneWidget);
    await tester.tap(boton);
    await tester.pumpAndSettle();

    // Verifica que estamos en la pantalla de datos personales
    expect(find.text('Hola, Nef A. Ortiz Caraballo'), findsOneWidget);
    expect(find.text('Hobbies:'), findsOneWidget);
    expect(find.text('- Comer'), findsOneWidget);
    expect(find.text('- Anime'), findsOneWidget);
    expect(find.text('- Jugar voleibol'), findsOneWidget);
  });
}
