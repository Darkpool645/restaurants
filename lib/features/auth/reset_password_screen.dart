import 'package:flutter/material.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_textfield.dart';
import '../../core/app_routes.dart';

class ResetPasswordScreen extends StatelessWidget {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cambiar contraseña')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomTextField(
              controller: passwordController,
              labelText: 'Nueva contraseña',
              hintText: 'Nueva contraseña',
              obscureText: true,
            ),
            const SizedBox(height: 16),
            CustomTextField(
              controller: confirmPasswordController,
              labelText: 'Confirmar contraseña',
              hintText: 'Confirmar contraseña',
              obscureText: true,
            ),
            const SizedBox(height: 24),
            CustomButton(
              text: 'Cambiar contraseña',
              color: Colors.green,
              onPressed: () {
                Navigator.popUntil(context, ModalRoute.withName(AppRoutes.login));
              },
            ),
          ],
        ),
      ),
    );
  }
}