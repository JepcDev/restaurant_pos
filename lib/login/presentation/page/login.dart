import 'dart:ui';
import 'package:flutter/material.dart';
// import 'home_screen.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Fondo: Imagen difuminada
          Image.network(
            'https://media.gettyimages.com/id/184946701/es/foto/pizza.jpg?s=612x612&w=gi&k=20&c=0aZWqxu6Cok0KXJNTgGyU3stoNmgF8KNy76O1IhfiLQ=',
            fit: BoxFit.cover,
          ),

          // Capa de blur (difuminado)
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5), // Difuminado
            child: Container(
              color: Colors.black.withValues(alpha: 0.3), // Oscurece un poco
            ),
          ),

          // Contenido (formulario)
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Pizzeria Random',
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 24),
                  _buildInputField(emailController, 'Correo'),
                  const SizedBox(height: 16),
                  _buildInputField(passwordController, 'Contraseña', isPassword: true),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () {
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    ),
                    child: const Text('Iniciar sesión', style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInputField(TextEditingController controller, String hint, {bool isPassword = false}) {
    return TextField(
      controller: controller,
      obscureText: isPassword,
      style: const TextStyle(color: Colors.black, fontSize: 18),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.black,fontSize: 18,),
        filled: true,
        // fillColor: Colors.white54.withValues(alpha: 0.8),
        fillColor:  Colors.white70,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30), borderSide: BorderSide.none),
      ),
    );
  }
}
