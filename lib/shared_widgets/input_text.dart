import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final String? placeholder;
  final TextInputType? keyboardType;
  final TextEditingController? textEditingController;
  final String? infoMessage;
  final bool? mustFill;

  const InputText({
    super.key,
    this.placeholder,
    this.keyboardType,
    this.textEditingController,
    this.infoMessage,
    this.mustFill,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 11,
        ),
        labelText: placeholder,
        border: const OutlineInputBorder(),
      ),
      validator: (value) {
        value = textEditingController!.text;
        if (value.isEmpty && mustFill!) {
          return infoMessage;
        }
        return null;
      },
    );
  }
}
