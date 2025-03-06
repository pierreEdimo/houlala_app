import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/features/auth/controllers/auth_controller.dart';
import 'package:houlala_app/features/main_nav/main_nav_providers.dart';
import 'package:houlala_app/helpers/search_args.dart';
import 'package:houlala_app/screens/cart_screen.dart';
import 'package:houlala_app/screens/discover_screen.dart';
import 'package:houlala_app/screens/home_screen.dart';
import 'package:houlala_app/screens/profile_screen.dart';
import 'package:houlala_app/shared_widgets/bottom_nav.dart';
import 'package:houlala_app/shared_widgets/bottom_nav_button.dart';
import 'package:houlala_app/shared_widgets/c_app_bar.dart';
import 'package:houlala_app/shared_widgets/search_input_button.dart';

class MainScreen extends ConsumerWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AuthController authController = AuthController(ref);

    bool isLoggedIn = authController.isLoggedIn;


    final List<Widget> widgetsOptions = <Widget>[
      const HomeScreen(),
      const DiscoverScreen(),
      const CartScreen(),
      const ProfileScreen(),
    ];

    int selectedIndex = ref.watch(mainNavStateNotifierProvider);

    void onItemTaped(int index) {
      ref.read(mainNavStateNotifierProvider.notifier).onItemTaped(index);
    }

    return Scaffold(
        appBar: CustomAppBar(
          title: SearchInputButton(
            onPressed: () =>
                Navigator.pushNamed(
                  context,
                  '/searchProducts',
                  arguments: SearchArgs(
                      categoryId: null, productTypeId: null, sellerId: null),
                ),
            hinText: 'Rechercher des produits',
          ),
          actions: [
            IconButton(
              onPressed: () =>
                  Navigator.of(context)
                      .pushNamed(isLoggedIn ? '/notifications' : '/login'),
              icon: const HeroIcon(HeroIcons.bell),
            )
          ],
        ),
        body: Stack(
          children: [
            Container(
              color: Colors.transparent,
              child: widgetsOptions.elementAtOrNull(selectedIndex),
            ),
            BottomNav(
              children: <BottomNavButton>[
                BottomNavButton(
                  selected: selectedIndex == 0,
                  selectedColor: Colors.orange,
                  color: Colors.black,
                  onPressed: () => onItemTaped(0),
                  icon: HeroIcons.homeModern,
                ),
                BottomNavButton(
                  selected: selectedIndex == 1,
                  selectedColor: Colors.orange,
                  color: Colors.black,
                  onPressed: () => onItemTaped(1),
                  icon: HeroIcons.bars3,
                ),
                BottomNavButton(
                  selected: selectedIndex == 2,
                  selectedColor: Colors.orange,
                  color: Colors.black,
                  onPressed: () => onItemTaped(2),
                  icon: HeroIcons.shoppingBag,
                ),
                BottomNavButton(
                  selected: selectedIndex == 3,
                  selectedColor: Colors.orange,
                  color: Colors.black,
                  onPressed: () => onItemTaped(3),
                  icon: HeroIcons.user,
                ),
              ],
            ),
          ],
        )
    );
  }
}
