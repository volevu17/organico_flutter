import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:organico_flutter/providers/theme_provider.dart';
import 'package:organico_flutter/screens/add_payment_screen.dart';
import 'package:organico_flutter/screens/cancel_order_screen.dart';
import 'package:organico_flutter/screens/category_list_screen.dart';
import 'package:organico_flutter/screens/contact_seller_screen.dart';
import 'package:organico_flutter/screens/coupons_screen.dart';
import 'package:organico_flutter/screens/customer_service_screen.dart';
import 'package:organico_flutter/screens/detail_screen.dart';
import 'package:organico_flutter/screens/edit_profile_screen.dart';
import 'package:organico_flutter/screens/forgot_password_screen.dart';
import 'package:organico_flutter/screens/main_screen.dart';
import 'package:organico_flutter/screens/my_address_screen.dart';
import 'package:organico_flutter/screens/my_bag_screen.dart';
import 'package:organico_flutter/screens/my_orders_screen.dart';
import 'package:organico_flutter/screens/my_wishlist_screen.dart';
import 'package:organico_flutter/screens/notification_screen.dart';
import 'package:organico_flutter/screens/notification_settings_screen.dart';
import 'package:organico_flutter/screens/order_detail_screen.dart';
import 'package:organico_flutter/screens/order_status_detail_screen.dart';
import 'package:organico_flutter/screens/otp_screen.dart';
import 'package:organico_flutter/screens/payment_method_screen.dart';
import 'package:organico_flutter/screens/reset_password_screen.dart';
import 'package:organico_flutter/screens/search_result_screen.dart';
import 'package:organico_flutter/screens/search_view_screen.dart';
import 'package:organico_flutter/screens/select_location_screen.dart';
import 'package:organico_flutter/screens/sign_in_screen.dart';
import 'package:organico_flutter/screens/sign_up_screen.dart';
import 'package:provider/provider.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        builder: (context, _) {
          final themeProvider = Provider.of<ThemeProvider>(context);
          return MaterialApp(
            title: 'Organico',
            themeMode: themeProvider.themeMode,
            theme: MyThemes.lightTheme,
            darkTheme: MyThemes.darkTheme,
            debugShowCheckedModeBanner: false,
            routes: {
              '/': (context) => const MainScreen(),
              '/search-view': (context) => const SearchViewScreen(),
              '/search-result': (context) => const SearchResultScreen(),
              '/sign-in': (context) => const SignInScreen(),
              '/sign-up': (context) => const SignUpScreen(),
              '/forgot-password': (context) => const ForgotPasswordScreen(),
              '/otp': (context) => const OTPScreen(),
              '/reset-password': (context) => const ResetPasswordScreen(),
              '/coupons': (context) => const CouponsScreen(),
              '/category': (context) => const CategoryListScreen(),
              '/detail': (context) => const DetailScreen(),
              '/notification': (context) => const NotificationScreen(),
              '/notification-settings': (context) =>
                  const NotificationSettingsScreen(),
              '/edit-profile': (context) => const EditProfileScreen(),
              '/my-orders': (context) => const MyOrdersScreen(),
              '/my-wishlist': (context) => const MyWishlistScreen(),
              '/my-address': (context) => const MyAddressScreen(),
              '/select-location': (context) => const SelectLocationScreen(),
              '/payment-method': (context) => const PaymentMethodScreen(),
              '/add-payment-method': (context) => const AddPaymentScreen(),
              '/customer-service': (context) => const CustomerServiceScreen(),
              '/my-bag': (context) => const MyBagScreen(),
              '/order-detail': (context) => const OrderDetailScreen(),
              'order-status-detail': (context) =>
                  const OrderStatusDetailScreen(),
              '/cancel-order': (context) => const CancelOrderScreen(),
              '/contact-seller': (context) => const ContactSellerScreen(),
            },
          );
        },
      );
}
