import 'package:coffee_shop_ui/Utils/routes.dart';
import 'package:coffee_shop_ui/Views/AuthScreens/signin.dart';
import 'package:coffee_shop_ui/Views/AuthScreens/register.dart';
import 'package:coffee_shop_ui/Views/Home/add_payment_screen.dart';
import 'package:coffee_shop_ui/Views/Home/cart.dart';
import 'package:coffee_shop_ui/Views/Home/check_out_screen.dart';
import 'package:coffee_shop_ui/Views/Home/favourite_screen.dart';
import 'package:coffee_shop_ui/Views/Home/home.dart';
import 'package:coffee_shop_ui/Views/Home/my_orders_page.dart';
import 'package:coffee_shop_ui/Views/Home/notifications_Screen.dart';
import 'package:coffee_shop_ui/Views/Home/payment_dont_screen.dart';
import 'package:coffee_shop_ui/Views/Home/profile.dart';
import 'package:coffee_shop_ui/Views/Home/single_product.dart';
import 'package:coffee_shop_ui/Views/Home/track_order_screen.dart';
import 'package:coffee_shop_ui/Views/OnBoarding/on_board_one.dart';
import 'package:coffee_shop_ui/Views/OnBoarding/on_board_three.dart';
import 'package:coffee_shop_ui/Views/OnBoarding/on_board_two.dart';
import 'package:coffee_shop_ui/Views/OnBoarding/on_boarding.dart';
import 'package:coffee_shop_ui/Views/OnBoarding/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee UI Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const SplashOneSceen(),
      routes: {
        AppRoutes.onboardingscreens: (context) => const OnBoardingScreens(),
        AppRoutes.onBoardOne: (context) => const OnBoardingOneScreen(),
        AppRoutes.onBoardTwo: (context) => const OnBoardingTwoScreen(),
        AppRoutes.onBoardThree: (context) => const OnBoardingThreeScreen(),
        AppRoutes.registerRoute: (context) => const RegisterScreen(),
        AppRoutes.signInRoute: (context) => const SignInScreen(),
        AppRoutes.homeRoute: (context) => const HomeScreen(),
        AppRoutes.singProuductRoute: (context) => const SingleProductScreen(),
        AppRoutes.cartRoue: (context) => const CartScreen(),
        AppRoutes.checkOutRoute: (context) => const CheckOutScreen(),
        AppRoutes.addPaymentRoute: (context) => const AddPaymentScreen(),
        AppRoutes.paymentDoneRoute: (context) => const PaymentDoneScreen(),
        AppRoutes.trackOrderRoute: (context) => const TrackOrderScreen(),
        AppRoutes.favouriteRoute: (context) => const FavouriteScreen(),
        AppRoutes.notificationRoute: (context) => const NotificationScreen(),
        AppRoutes.profileRoute: (context) => const PofileScreen(),
        AppRoutes.myOrdersRoute: (context) => const MyOrdersPage(),
      },
    );
  }
}
