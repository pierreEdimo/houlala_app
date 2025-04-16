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
import 'package:houlala_app/shared_widgets/c_container.dart';
import 'package:houlala_app/shared_widgets/c_scaffold.dart';
import 'package:houlala_app/shared_widgets/local_nav.dart';
import 'package:houlala_app/shared_widgets/search_input_button.dart';
import 'package:houlala_app/shared_widgets/product_grid.dart';

class LocalDetailScreen extends ConsumerWidget {
  const LocalDetailScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    LocalsController localController = LocalsController(ref);
    ProductController productController = ProductController(ref);

    final int localId = ModalRoute.of(context)!.settings.arguments as int;
    LocalModel? selectedLocal = localController.getSelectedLocal(localId);

    return CustomScaffold(
      appBar: CustomAppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const HeroIcon(HeroIcons.chevronLeft),
        ),
        title: Text(
          selectedLocal != null ? selectedLocal.name! : '',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            fontSize: 22
          ),
        ),
      ),
      body: selectedLocal == null
          ? Container()
          : LocalNavigation(
              menuItems: const ["Accueil", "Infos", "Produits"],
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
        productController!.getProductByLocalId(localModel!.dbId!);
    return CustomContainer(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: verticalPadding),
          child: Column(
            spacing: verticalPadding,
            children: [
              SearchInputButton(
                hinText: 'Rechercher dans ${localModel!.name!}',
                onPressed: () => Navigator.of(context).pushNamed(
                  '/searchProducts',
                  arguments: SearchArgs(
                      hinText: 'Rechercher dans ${localModel!.name!}',
                      sellerId: localModel!.dbId!),
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
    return CustomContainer(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: verticalPadding, bottom: 110),
          child: Column(
            spacing: verticalPadding,
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
                                    localModel!.productType!.category!.dbId!,
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
        productController.getTopSellingProductsByLocalId(localModel!.dbId!);
    return CustomContainer(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: verticalPadding),
          child: Column(
            spacing: verticalPadding,
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
      ),
    );
  }
}
