import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/screens/user_screen.dart';
import 'package:houlala_app/screens/wallet_screen.dart';
import '../features/products/controllers/product_controller.dart';
import '../features/products/model/product.dart';
import '../shared_widgets/c_app_bar.dart';
import '../shared_widgets/search_input.dart';
import 'discover_screen.dart';
import 'home_screen.dart';

class MainNavigationScreen extends ConsumerStatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  ConsumerState<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends ConsumerState<MainNavigationScreen> {
  int _selectedIndex = 0;


  final List<Widget> _widgetOptions = <Widget>[
    // const Homescreen(),
    // const DiscoverScreen(),
    // const WalletScreen(),
    // const UserScreen(),
    const Center(child: Text('Home'),),
    const Center(child: Text('Decouvrir'),),
    const WalletScreen(),
    const UserScreen(),
  ];

  void _onItemTaped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    ProductController productController = ProductController(ref);
    List<Product> productList = productController.productList;

    return Scaffold(
      appBar: CustomAppBar(
        title:  SearchInput(
          productList: productList,
          hinText: 'Rechercher les produits',
        ),
        actions: [
          IconButton(
              onPressed: () =>  Navigator.of(context).pushNamed('/cart'), icon: const HeroIcon(HeroIcons.shoppingBag)),
          IconButton(onPressed: () => Navigator.of(context).pushNamed('/notifications'), icon: const HeroIcon(HeroIcons.bell))
        ],
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.transparent,
            child: _widgetOptions.elementAtOrNull(_selectedIndex),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.only(bottom: 20),
              height: 80,
              width: MediaQuery.of(context).size.width * 0.85,
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(65.0)),
                color: Colors.white,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () => _onItemTaped(0),
                        icon: _selectedIndex != 0
                            ? const HeroIcon(HeroIcons.homeModern)
                            : const HeroIcon(
                                HeroIcons.homeModern,
                                style: HeroIconStyle.solid,
                                color: Colors.orange,
                              ),
                      ),
                      IconButton(
                        onPressed: () => _onItemTaped(1),
                        icon: _selectedIndex != 1
                            ? const HeroIcon(HeroIcons.bars3)
                            : const HeroIcon(
                                HeroIcons.bars3,
                                style: HeroIconStyle.solid,
                                color: Colors.orange,
                              ),
                      ),
                      IconButton(
                        onPressed: () => _onItemTaped(2),
                        icon: _selectedIndex != 2
                            ? const HeroIcon(HeroIcons.wallet)
                            : const HeroIcon(
                                HeroIcons.wallet,
                                style: HeroIconStyle.solid,
                                color: Colors.orange,
                              ),
                      ),
                      IconButton(
                        onPressed: () => _onItemTaped(3),
                        icon: _selectedIndex != 3
                            ? const HeroIcon(HeroIcons.user)
                            : const HeroIcon(
                                HeroIcons.user,
                                style: HeroIconStyle.solid,
                                color: Colors.orange,
                              ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

// class MainNavigationScreen extends StatefulWidget {
//   const MainNavigationScreen({super.key});
//
//   @override
//   State<MainNavigationScreen> createState() => _MainNavigationScreenState();
// }
//
// class _MainNavigationScreenState extends State<MainNavigationScreen> {
//   int _selectedIndex = 0;
//
//   final List<Widget> _widgetOptions = const <Widget>[
//     Homescreen(),
//     DiscoverScreen(),
//     CartScreen(),
//     BellScreen(),
//     UserScreen()
//   ];
//
//   void _onItemTaped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: _widgetOptions.elementAtOrNull(_selectedIndex),
//       ),
//       bottomNavigationBar: NavigationBar(
//         backgroundColor: Colors.white,
//         destinations: const <NavigationDestination>[
//           NavigationDestination(
//             selectedIcon: HeroIcon(
//               HeroIcons.homeModern,
//               color: Colors.black,
//               style: HeroIconStyle.solid,
//             ),
//             icon: HeroIcon(
//               HeroIcons.homeModern,
//               style: HeroIconStyle.outline,
//             ),
//             label: "Accueil",
//           ),
//           NavigationDestination(
//             selectedIcon: HeroIcon(
//               HeroIcons.magnifyingGlass,
//               color: Colors.black,
//               style: HeroIconStyle.solid,
//             ),
//             icon: HeroIcon(
//               HeroIcons.magnifyingGlass,
//               color: Colors.black,
//               style: HeroIconStyle.outline,
//             ),
//             label: "Decouvrir",
//           ),
//           NavigationDestination(
//             selectedIcon: HeroIcon(
//               HeroIcons.shoppingBag,
//               color: Colors.black,
//               style: HeroIconStyle.solid,
//             ),
//             icon: HeroIcon(
//               HeroIcons.shoppingBag,
//               style: HeroIconStyle.outline,
//             ),
//             label: "Panier",
//           ),
//           NavigationDestination(
//             selectedIcon: HeroIcon(
//               HeroIcons.bell,
//               color: Colors.black,
//               style: HeroIconStyle.solid,
//             ),
//             icon: HeroIcon(
//               HeroIcons.bell,
//               style: HeroIconStyle.outline,
//             ),
//             label: "Notifications",
//           ),
//           NavigationDestination(
//             selectedIcon: HeroIcon(
//               HeroIcons.user,
//               color: Colors.black,
//               style: HeroIconStyle.solid,
//             ),
//             icon: HeroIcon(
//               HeroIcons.user,
//               style: HeroIconStyle.outline,
//             ),
//             label: "Profile",
//           ),
//         ],
//         selectedIndex: _selectedIndex,
//         onDestinationSelected: _onItemTaped,
//       ),
//     );
//   }
// }
