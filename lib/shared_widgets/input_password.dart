import 'package:flutter/material.dart';

import '../helpers/constants.dart';

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
      decoration: InputDecoration(
          contentPadding: inputPadding,
          labelText: "Mot de passe",
          border: const OutlineInputBorder()),
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
