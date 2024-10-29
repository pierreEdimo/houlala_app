import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/screens/user_screen.dart';
import '../shared_widgets/c_app_bar.dart';
import '../shared_widgets/search_input.dart';
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

  final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const DiscoverScreen(),
    const UserScreen(),
  ];

  void _onItemTaped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // if (_selectedIndex == 3) {
    //   AuthController authController = AuthController(ref);Homescreen
    //   authController.checkConnectedUser();
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: const SearchInput(
          hinText: 'Rechercher les produits',
        ),
        actions: [
          IconButton(
              onPressed: () => Navigator.of(context).pushNamed('/cart'),
              icon: const HeroIcon(HeroIcons.shoppingBag)),
          IconButton(
            onPressed: () => Navigator.of(context).pushNamed('/notifications'),
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
                      // IconButton(
                      //   onPressed: () => _onItemTaped(2),
                      //   icon: _selectedIndex != 2
                      //       ? const HeroIcon(HeroIcons.wallet)
                      //       : const HeroIcon(
                      //           HeroIcons.wallet,
                      //           style: HeroIconStyle.solid,
                      //           color: Colors.orange,
                      //         ),
                      // ),
                      IconButton(
                        onPressed: () => _onItemTaped(2),
                        icon: _selectedIndex != 2
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
