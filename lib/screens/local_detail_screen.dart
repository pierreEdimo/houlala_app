import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/args/category_args.dart';
import 'package:houlala_app/features/locals/controllers/locals_controller.dart';
import 'package:houlala_app/features/locals/model/local_model.dart';
import 'package:houlala_app/features/products/controllers/product_controller.dart';
import 'package:houlala_app/features/products/model/product.dart';
import 'package:houlala_app/helpers/constants.dart';
import 'package:houlala_app/helpers/open_url.dart';
import 'package:houlala_app/helpers/search_args.dart';
import 'package:houlala_app/shared_widgets/c_app_bar.dart';
import 'package:houlala_app/shared_widgets/filter_button.dart';
import 'package:houlala_app/shared_widgets/local_nav.dart';
import 'package:houlala_app/shared_widgets/search_input_button.dart';
import 'package:houlala_app/shared_widgets/vproduct_grid.dart';

class LocalDetailScreen extends ConsumerWidget {
  const LocalDetailScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    LocalsController localController = LocalsController(ref);
    ProductController productController = ProductController(ref);

    final int localId = ModalRoute.of(context)!.settings.arguments as int;
    LocalModel? selectedLocal = localController.getSelectedLocal(localId);

    return Scaffold(
      appBar: CustomAppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const HeroIcon(HeroIcons.chevronLeft),
        ),
      ),
      body: selectedLocal == null
          ? Container()
          : LocalNavigation(
              menuItems: const ["Accueil", "Informations", "Produits"],
              widgetOptions: [
                LocalHome(localModel: selectedLocal),
                LocalInfo(localModel: selectedLocal),
                LocalProducts(
                    localModel: selectedLocal,
                    productController: productController)
              ],
            ),
    );
  }
}

class LocalProducts extends StatelessWidget {
  final LocalModel? localModel;
  final ProductController? productController;

  const LocalProducts({
    super.key,
    this.localModel,
    this.productController,
  });

  @override
  Widget build(BuildContext context) {
    List<Product> productList =
        productController!.getProductByLocalId(localModel!.id!);
    return Stack(
      children: [
        SingleChildScrollView(
          child: Padding(
            padding: stackDefaultPadding,
            child: Column(
              spacing: 20,
              children: [
                SearchInputButton(
                  hinText: 'Rechercher dans ${localModel!.name!}',
                  onPressed: () => Navigator.of(context).pushNamed(
                    '/searchProducts',
                    arguments: SearchArgs(
                        categoryId: null,
                        productTypeId: null,
                        sellerId: localModel!.id!),
                  ),
                ),
                VerticalProductGrid(
                  aspectRatio: productAspectRatio,
                  shrinkWrap: true,
                  productList: productList,
                )
              ],
            ),
          ),
        ),
        productList.isNotEmpty ? const FilterButton() : Container()
      ],
    );
  }
}

class LocalInfo extends ConsumerWidget {
  final LocalModel? localModel;

  const LocalInfo({
    super.key,
    this.localModel,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: horizontalPadding,
        vertical: verticalPadding,
      ),
      child: SingleChildScrollView(
        child: Column(
          spacing: 20,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(localModel!.description!),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              spacing: 7,
              children: [
                localModel!.email != null
                    ? Row(
                        spacing: 5,
                        children: [
                          const Text('E-mail:'),
                          Flexible(
                              child: GestureDetector(
                            onTap: () => OpenUrl.openContact(
                                'mailto', localModel!.email!),
                            child: Text(
                              localModel!.email!,
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ))
                        ],
                      )
                    : Container(),
                localModel!.telephoneNumber != null
                    ? Row(
                        spacing: 5,
                        children: [
                          const Text('Numero de telephone:'),
                          Flexible(
                              child: GestureDetector(
                            onTap: () => OpenUrl.openContact(
                                'tel', localModel!.telephoneNumber!),
                            child: Text(
                              localModel!.telephoneNumber!,
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold),
                            ),
                          ))
                        ],
                      )
                    : Container(),
                localModel!.website != null
                    ? Row(
                        spacing: 5,
                        children: [
                          const Text('Site web:'),
                          Flexible(
                            child: GestureDetector(
                              onTap: () {},
                              child: Text(
                                localModel!.website!,
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                )),
                              ),
                            ),
                          ),
                        ],
                      )
                    : Container(),
                Row(
                  spacing: 5,
                  children: [
                    const Text('Domaine'),
                    GestureDetector(
                      onTap: () => Navigator.of(context).pushNamed(
                          localModel!.productType!.route!,
                          arguments: CategoryArg(
                              categoryId:
                                  localModel!.productType!.category!.id!,
                              categoryName: localModel!.productType!.name,
                              productType: localModel!.productType)),
                      child: Text(
                        localModel!.productType!.name!,
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                        )),
                      ),
                    )
                  ],
                ),
                Text(
                    "Adresse: ${localModel!.street!} ${localModel!.city!}, ${localModel!.countryCode!} ")
              ],
            )
          ],
        ),
      ),
    );
  }
}

class LocalHome extends ConsumerWidget {
  final LocalModel? localModel;

  const LocalHome({
    super.key,
    this.localModel,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ProductController productController = ProductController(ref);
    List<Product> productList =
        productController.getTopSellingProductsByLocalId(localModel!.id!);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: horizontalPadding,
          vertical: verticalPadding,
        ),
        child: Column(
          spacing: 20,
          children: [
            Column(
              spacing: 7,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'A propos',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                ),
                Text(localModel!.description!)
              ],
            ),
            productList.isNotEmpty
                ? Column(
                    spacing: 7,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Produits les plus vendus par ${localModel!.name!}',
                      ),
                      VerticalProductGrid(
                        shrinkWrap: true,
                        aspectRatio: productAspectRatio,
                        physics: const ClampingScrollPhysics(),
                        productList: productList,
                      )
                    ],
                  )
                : Container()
          ],
        ),
      ),
    );
  }
}