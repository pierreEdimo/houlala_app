import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:houlala_app/features/carts/model/cart_item.dart';
import 'package:houlala_app/features/category/model/category_model.dart';
import 'package:houlala_app/features/locals/model/local_model.dart';
import 'package:houlala_app/features/product_type/models/product_type.dart';
import 'package:houlala_app/features/products/model/product.dart';
import 'package:houlala_app/helpers/no_transitions_builder.dart';
import 'package:houlala_app/screens/address_screen.dart';
import 'package:houlala_app/screens/all_product_screen.dart';
import 'package:houlala_app/screens/cart_screen.dart';
import 'package:houlala_app/screens/category_detail_screen.dart';
import 'package:houlala_app/screens/checkout_screen.dart';
import 'package:houlala_app/screens/discover_screen.dart';
import 'package:houlala_app/screens/gast_checkout_screen.dart';
import 'package:houlala_app/screens/home_screen.dart';
import 'package:houlala_app/screens/local_detail_screen.dart';
import 'package:houlala_app/screens/login_screen.dart';
import 'package:houlala_app/screens/logup_screen.dart';
import 'package:houlala_app/screens/my_account_screen.dart';
import 'package:houlala_app/screens/my_bills_screen.dart';
import 'package:houlala_app/screens/my_favorites_screen.dart';
import 'package:houlala_app/screens/my_lists_screen.dart';
import 'package:houlala_app/screens/my_messages_screen.dart';
import 'package:houlala_app/screens/my_orders_screen.dart';
import 'package:houlala_app/screens/no_product_screen.dart';
import 'package:houlala_app/screens/no_store_screen.dart';
import 'package:houlala_app/screens/notification_screen.dart';
import 'package:houlala_app/screens/product_detail_screen.dart';
import 'package:houlala_app/screens/profile_screen.dart';
import 'package:houlala_app/screens/search_product_screen.dart';
import 'package:houlala_app/screens/search_store_screen.dart';
import 'package:houlala_app/screens/store_detail_screen.dart';
import 'package:houlala_app/screens/store_type_detail_screen.dart';
import 'package:houlala_app/screens/product_type_detail_screen.dart';
import 'package:sizer/sizer.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:toastification/toastification.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';

import 'screens/about_screen.dart';
import 'screens/condition_screen.dart';
import 'screens/policy_screen.dart';

const storage = FlutterSecureStorage();
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

Future main() async {
  await Hive.initFlutter();

  Hive.registerAdapter(LocalModelAdapter());
  Hive.registerAdapter(ProductTypeAdapter());
  Hive.registerAdapter(CategoryModelAdapter());
  Hive.registerAdapter(ProductAdapter());
  Hive.registerAdapter(CartItemAdapter());

  await Hive.openBox<CartItem>('cartItems');

  initializeDateFormatting('fr_FR', null);
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
    return Sizer(builder: (context, orientation, screenType) {
      return ToastificationWrapper(
        child: GetMaterialApp(
          title: 'Houla la',
          debugShowCheckedModeBanner: false,
          navigatorKey: navigatorKey,
          theme: ThemeData(
            textTheme: GoogleFonts.poppinsTextTheme(),
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
            useMaterial3: true,
            scaffoldBackgroundColor: const Color(0xFFf4efe8),
            pageTransitionsTheme: const PageTransitionsTheme(
              builders: <TargetPlatform, PageTransitionsBuilder>{
                TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
                TargetPlatform.android: TransitionsBuilder()
              }
            )
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => const HomeScreen(),
            '/discover': (context) => const DiscoverScreen(),
            '/user': (context) => const ProfileScreen(),
            '/carts': (context) => const CartScreen(),
            '/productDetail': (context) => const ProductDetailScreen(),
            '/categoryDetail': (context) => const CategoryDetailScreen(),
            '/searchProducts': (context) => const SearchProductScreen(),
            '/searchStore': (context) => const SearchStoreScreen(),
            '/allProducts': (context) => const AllProductScreen(),
            '/subCategoryDetail': (context) => const ProductTypeDetailScreen(),
            '/notifications': (context) => const NotificationScreen(),
            '/login': (context) => const LoginScreen(),
            '/logup': (context) => const LogupScreen(),
            '/noProducts': (context) => const NoProductScreen(),
            '/storeDetail': (context) => const StoreDetailScreen(),
            '/noStore': (context) => const NoStoreScreen(),
            '/checkout': (context) => const CheckoutScreen(),
            '/gastCheckout': (context) => const GastCheckoutScreen(),
            '/localDetail': (context) => const LocalDetailScreen(),
            '/myOrders': (context) => const MyOrdersScreen(),
            '/myAccount': (context) => const MyAccountScreen(),
            '/myBills': (context) => const MyBillsScreen(),
            '/myFavorite': (context) => const MyFavoritesScreen(),
            '/myList': (context) => const MyListsScreen(),
            '/myMessage': (context) => const MyMessagesScreen(),
            '/myAddresses': (context) => const AddressScreen(),
            '/subStoreCategoryDetail': (context) =>
                const StoreTypeDetailScreen(),
            '/policy': (context) => const PolicyScreen(),
            '/about': (context) => const AboutScreen(),
            '/condition': (context) => const ConditionScreen(),
          },
        ),
      );
    });
  }
}
