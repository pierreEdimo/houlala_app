import 'package:flutter/material.dart';

class InputEmail extends StatelessWidget {
  final TextEditingController? emailController;

  const InputEmail({
    super.key,
    this.emailController,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            horizontal: 8.0,
            vertical: 11.0,
          ),
          labelText: "Email",
          border: OutlineInputBorder()),
      validator: (value) {
        value = emailController!.text;
        if (value.isEmpty) {
          return 'Inserer une adresse E-mail';
        } else if (!value.contains('@')) {
          return 'Svp entrer une E-mail valide';
        }
        return null;
      },
    );
  }
}
