import 'package:flutter/material.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_textfield.dart';
import '../../core/app_routes.dart';

class RecoveryPasswordScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();

  RecoveryPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Recuperar contraseña')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomTextField(
              controller: emailController,
              labelText: 'Correo electrónico',
              hintText: 'Correo electrónico',
            ),
            const SizedBox(height: 24),
            CustomButton(
              text: 'Enviar código de recuperación',
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.confirmCode);
              }
            )
          ]
        )
      ),
    );
  }
}