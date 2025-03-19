import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/features/main_nav/main_nav_providers.dart';
import 'package:houlala_app/shared_widgets/bottom_nav.dart';
import 'package:houlala_app/shared_widgets/bottom_nav_button.dart';
import 'package:houlala_app/shared_widgets/c_app_bar.dart';

class CustomScaffold extends ConsumerWidget {
  final CustomAppBar? appBar;
  final Widget? body;

  const CustomScaffold({
    super.key,
    this.appBar,
    this.body,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int selectedIndex = ref.watch(mainNavStateNotifierProvider);

    void navigateToScreen(int index, String routeName) {
      ref.read(mainNavStateNotifierProvider.notifier).onItemTaped(index);
      Navigator.of(context).pushNamed(routeName);
    }

    return Scaffold(
      appBar: appBar,
      body: Stack(
        children: [
          body != null ? body! : Container(),
          BottomNav(
            children: <BottomNavButton>[
              BottomNavButton(
                selected: selectedIndex == 0,
                selectedColor: Colors.orange,
                color: Colors.black,
                onPressed: () => navigateToScreen(0, '/'),
                icon: HeroIcons.homeModern,
              ),
              BottomNavButton(
                selected: selectedIndex == 1,
                selectedColor: Colors.orange,
                color: Colors.black,
                onPressed: () => navigateToScreen(1, '/discover'),
                icon: HeroIcons.bars3,
              ),
              BottomNavButton(
                selected: selectedIndex == 2,
                selectedColor: Colors.orange,
                color: Colors.black,
                onPressed: () => navigateToScreen(2, '/carts'),
                icon: HeroIcons.shoppingBag,
              ),
              BottomNavButton(
                selected: selectedIndex == 3,
                selectedColor: Colors.orange,
                color: Colors.black,
                onPressed: () => navigateToScreen(3, '/user'),
                icon: HeroIcons.user,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
