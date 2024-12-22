import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:houlala_app/screens/all_product_screen.dart';
import 'package:houlala_app/screens/cart_screen.dart';
import 'package:houlala_app/screens/category_detail_screen.dart';
import 'package:houlala_app/screens/login_screen.dart';
import 'package:houlala_app/screens/logup_screen.dart';
import 'package:houlala_app/screens/main_navigation_screen.dart';
import 'package:houlala_app/screens/no_product_screen.dart';
import 'package:houlala_app/screens/no_store_screen.dart';
import 'package:houlala_app/screens/notification_screen.dart';
import 'package:houlala_app/screens/product_detail_screen.dart';
import 'package:houlala_app/screens/search_product_screen.dart';
import 'package:houlala_app/screens/search_store_screen.dart';
import 'package:houlala_app/screens/store_detail_screen.dart';
import 'package:houlala_app/screens/store_type_detail_screen.dart';
import 'package:houlala_app/screens/product_type_detail_screen.dart';

const storage = FlutterSecureStorage();
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

Future main() async {
  await dotenv.load(fileName: '.env');
  runApp(const ProviderScope(child: MyApp()));

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
      statusBarColor: Colors.transparent,
    ),
  );

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Houla la',
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFf4efe8),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MainNavigationScreen(),
        '/productDetail': (context) => const ProductDetailScreen(),
        '/categoryDetail': (context) => const CategoryDetailScreen(),
        '/searchProducts': (context) => const SearchProductScreen(),
        '/searchStore': (context) => const SearchStoreScreen(),
        '/allProducts': (context) => const AllProductScreen(),
        '/subCategoryDetail': (context) => const ProductTypeDetailScreen(),
        '/cart': (context) => const CartScreen(),
        '/notifications': (context) => const NotificationScreen(),
        '/login': (context) => const LoginScreen(),
        '/logup': (context) => const LogupScreen(),
        '/noProducts': (context) => const NoProductScreen(),
        '/storeDetail': (context) => const StoreDetailScreen(),
        '/noStore': (context) => const NoStoreScreen(),
        '/subStoreCategoryDetail': (context) =>
            const StoreTypeDetailScreen()
      },
    );
  }
}
