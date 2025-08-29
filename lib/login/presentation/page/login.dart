import 'dart:ui';
import 'package:flutter/material.dart';

import '../widgets/custom_input_field.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            'https://media.gettyimages.com/id/184946701/es/foto/pizza.jpg?s=612x612&w=gi&k=20&c=0aZWqxu6Cok0KXJNTgGyU3stoNmgF8KNy76O1IhfiLQ=',
            fit: BoxFit.cover,
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(
              color: Colors.black.withValues(alpha: 0.3),
            ),
          ),
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
                  CustomInputField(controller:emailController, hint:'Correo'),
                  const SizedBox(height: 16),
                  CustomInputField(controller: passwordController, hint: 'Contraseña', isPassword: true,),
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
}
