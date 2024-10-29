import 'package:flutter/material.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_textfield.dart';
import '../../core/app_routes.dart';

class ConfirmCodeScreen extends StatelessWidget {
  final TextEditingController codeController = TextEditingController();

  ConfirmCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Confirmación de código')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomTextField(
              controller: codeController,
              labelText: 'Código de verificación',
              hintText: 'Código de verificación'
            ),
            const SizedBox(height: 24),
            CustomButton(
              text: 'Verificar código',
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.resetPassword);
              },
            ),
          ],
        ),
      ),
    );
  }
}