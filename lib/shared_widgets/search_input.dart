import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../helpers/constants.dart';
import '../helpers/search_args.dart';

class SearchInput extends StatelessWidget {
  final String? hinText;
  final String? route;
  final int? subCategoryId;

  const SearchInput({
    super.key,
    this.hinText,
    this.route,
    @Default(null) this.subCategoryId
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: () =>
          Navigator.of(context).pushNamed(route != null ? route! : '/search',
              arguments: SearchArgs(
                hinText: hinText,
                subCategoryId: subCategoryId
              )),
      textInputAction: TextInputAction.search,
      onFieldSubmitted: (value) {},
      decoration: InputDecoration(
        hintText: 'Rechercher',
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
