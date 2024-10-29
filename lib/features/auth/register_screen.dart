import 'package:flutter/material.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_textfield.dart';
import '../../core/app_routes.dart';

class RegisterScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Crear cuenta')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomTextField(
              controller: nameController,
              labelText: 'Nombre',
              hintText: 'Nombre',
            ),
            const SizedBox(height: 16),
            CustomTextField(
              controller: emailController,
              labelText: 'Correo electrónico',
              hintText: 'Correo electrónico',
            ),
            const SizedBox(height: 16),
            CustomTextField(
              controller: passwordController,
              labelText: 'Contraseña',
              hintText: 'Contraseña',
              obscureText: true,
            ),
            const SizedBox(height: 24),
            CustomButton(
              text: 'Registrarse',
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.login);
              },
            )
          ],
        ),
      ),
    );
  }
}
