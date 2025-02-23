import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/helpers/search_args.dart';
import 'package:houlala_app/screens/cart_screen.dart';
import 'package:houlala_app/screens/profile_screen.dart';
import 'package:sizer/sizer.dart';
import '../features/auth/controllers/auth_controller.dart';
import '../shared_widgets/c_app_bar.dart';
import '../shared_widgets/search_input_button.dart';
import 'discover_screen.dart';
import 'home_screen.dart';

class MainNavigationScreen extends ConsumerStatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  ConsumerState<MainNavigationScreen> createState() =>
      _MainNavigationScreenState();
}

class _MainNavigationScreenState extends ConsumerState<MainNavigationScreen> {
  int _selectedIndex = 0;
  final bool isLoggedIn = false;
  late bool loading;

  final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const DiscoverScreen(),
    const CartScreen(),
    const ProfileScreen(),
  ];

  void _onItemTaped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    AuthController authController = AuthController(ref);

    bool isLoggedIn = authController.isLoggedIn;

    return Scaffold(
      appBar: CustomAppBar(
        title: SearchInputButton(
          onPressed: () => Navigator.of(context).pushNamed(
            '/searchProducts',
            arguments: SearchArgs(
                categoryId: null, productTypeId: null, sellerId: null),
          ),
          hinText: 'Rechercher les produits',
        ),
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context)
                .pushNamed(isLoggedIn ? '/notifications' : '/login'),
            icon: const HeroIcon(HeroIcons.bell),
          )
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
              width: 90.w,
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
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
                            ? const HeroIcon(HeroIcons.shoppingBag)
                            : const HeroIcon(
                                HeroIcons.shoppingBag,
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
