import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../helpers/constants.dart';

class SearchInputButton extends StatelessWidget {
  final String? hinText;
  final String? route;
  final int? subCategoryId;
  final VoidCallback? onPressed;

  const SearchInputButton({
    super.key,
    this.hinText,
    this.route,
    this.onPressed,
    @Default(null) this.subCategoryId
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onPressed,
      textInputAction: TextInputAction.search,
      onFieldSubmitted: (value) {},
      readOnly: true,
      enableInteractiveSelection: true,
      decoration: InputDecoration(
        hintText: hinText ?? 'Rechercher',
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey, width: 2.0),
          borderRadius: radius,
        ),
        hintStyle: const TextStyle(color: Color(0xff000000)),
        prefixIcon: const Icon(Icons.search, color: Color(0xff000000)),
      ),
    );
  }
}
