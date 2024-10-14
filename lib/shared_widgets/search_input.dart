import 'package:flutter/material.dart';
import '../features/products/model/product.dart';
import '../helpers/constants.dart';
import '../helpers/search_args.dart';

class SearchInput extends StatelessWidget {
  final List<Product>? productList;
  final String? hinText;

  const SearchInput({
    super.key,
    this.productList,
    this.hinText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: () => Navigator.of(context).pushNamed('/search',
          arguments: SearchArgs(
            productList: productList,
            hinText: hinText,
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
