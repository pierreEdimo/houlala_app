import 'package:flutter/material.dart';

class InputPassword extends StatelessWidget {
  final TextEditingController? passwordController;
  final RegExp? passwordRex;

  const InputPassword({
    super.key,
    this.passwordController,
    this.passwordRex,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: passwordController,
      obscureText: true,
      keyboardType: TextInputType.visiblePassword,
      decoration: const InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            horizontal: 8.0,
            vertical: 11.0,
          ),
          labelText: "Mot de passe",
          border: OutlineInputBorder()),
      validator: (value) {
        value = passwordController!.text;
        if (value.isEmpty) {
          return 'Inserer un Mot de passe';
        }
        if (value.length < 7) {
          return 'votre mot de passe doit avoir minimum 7 caracteres';
        }
        if (!passwordRex!.hasMatch(value)) {
          return 'mot de passe invalide';
        }
        return null;
      },
    );
  }
}
