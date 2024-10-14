import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import '../features/products/model/product.dart';
import '../helpers/constants.dart';
import '../helpers/search_args.dart';
import '../shared_widgets/c_app_bar.dart';
import '../shared_widgets/filter_products_button.dart';
import '../shared_widgets/product_card.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late String searchWord = '';
  late bool onFieldSubmitted = false;
  final TextEditingController searchWordController = TextEditingController();
  late List<Product>? filteredProducts;

  @override
  void initState() {
    super.initState();
    filteredProducts = [];
  }

  @override
  Widget build(BuildContext context) {
    SearchArgs searchArgs =
        ModalRoute.of(context)!.settings.arguments as SearchArgs;

    List<Product> productList = List.from(searchArgs.productList!);

    return Scaffold(
      appBar: CustomAppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const HeroIcon(
            HeroIcons.chevronLeft,
          ),
        ),
        title: TextFormField(
          textInputAction: TextInputAction.search,
          controller: searchWordController,
          onFieldSubmitted: (value) {
            setState(() {
              if (value.isNotEmpty) {
                filteredProducts = productList
                    .where((product) => product.name!
                        .toLowerCase()
                        .contains(value.toLowerCase()))
                    .toList();
                onFieldSubmitted = true;
              }
            });
          },
          onChanged: (value) {
            setState(() {
              searchWord = value;
            });
          },
          decoration: InputDecoration(
              hintText: searchArgs.hinText,
              border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.grey, width: 2),
                  borderRadius: radius),
              hintStyle: const TextStyle(color: Color(0xff000000)),
              prefixIcon: const Icon(Icons.search, color: Color(0xff000000)),
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    onFieldSubmitted = false;
                    searchWordController.clear();
                  });
                },
                icon: const Icon(
                  Icons.close,
                ),
              )),
        ),
      ),
      body: !onFieldSubmitted
          ? const Center(
              child: Text('Empty'),
            )
          : ProductSearchResult(
              productList: filteredProducts,
            ),
    );
  }
}

class ProductSearchResult extends StatelessWidget {
  final List<Product>? productList;

  const ProductSearchResult({
    super.key,
    this.productList,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              left: horizontalPadding,
              right: horizontalPadding,
              top: verticalPadding,
              bottom: stackBottomPadding,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text('${productList!.length} produits'),
                GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  physics: const ClampingScrollPhysics(),
                  childAspectRatio: productAspectRatio,
                  children: productList!
                      .map((product) => ProductCard(
                            product: product,
                          ))
                      .toList(),
                )
              ],
            ),
          ),
        ),
        productList!.isNotEmpty ? const FilterProductsButton() : Container()
      ],
    );
  }
}
