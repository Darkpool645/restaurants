import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class PasswordInput extends StatelessWidget {
  final TextEditingController controller;
  final bool isObscure;
  final VoidCallback toggleVisibility;
  final String hintText;
  final String labelText;

  const PasswordInput(
      {required this.controller,
      required this.isObscure,
      required this.toggleVisibility,
      required this.hintText,
      required this.labelText,
      super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isObscure,
      decoration: InputDecoration(
        hintText: hintText,
        label: Text(labelText),
        suffixIcon: IconButton(
          onPressed: toggleVisibility,
          icon: Icon(isObscure ? Icons.visibility : Icons.visibility_off),
        ),
      ),
    );
  }
}
