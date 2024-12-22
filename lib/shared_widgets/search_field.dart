import 'package:flutter/material.dart';
import 'package:houlala_app/helpers/constants.dart';

class SearchField extends StatelessWidget {
  final Function(String)? onSubmitted;
  final String? placeholder;

  const SearchField({
    super.key,
    this.onSubmitted,
    this.placeholder
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: TextInputAction.search,
      onFieldSubmitted: onSubmitted,
      decoration: InputDecoration(
        hintText: placeholder,
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey, width: 2),
          borderRadius: radius
        ), 
        hintStyle: const TextStyle(color: Color(0xff000000)), 
        prefixIcon: const Icon(
          Icons.search, 
          color: Color(0xff000000),
        )
      ),
    );
  }
}
