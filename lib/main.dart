import 'package:coffee_shop_ui/Utils/routes.dart';
import 'package:coffee_shop_ui/Views/AuthScreens/register.dart';
import 'package:coffee_shop_ui/Views/AuthScreens/sign_in.dart';
import 'package:coffee_shop_ui/Views/Home/home.dart';
import 'package:coffee_shop_ui/Views/Home/single_product.dart';
import 'package:coffee_shop_ui/Views/OnBoarding/on_board_one.dart';
import 'package:coffee_shop_ui/Views/OnBoarding/on_board_three.dart';
import 'package:coffee_shop_ui/Views/OnBoarding/on_board_two.dart';
import 'package:coffee_shop_ui/Views/OnBoarding/on_boarding.dart';
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
      home: const SingleProductScreen(),
      routes: {
        AppRoutes.onboardingscreens: (context) => const OnBoardingScreens(),
        AppRoutes.onBoardOne: (context) => const OnBoardingOneScreen(),
        AppRoutes.onBoardTwo: (context) => const OnBoardingTwoScreen(),
        AppRoutes.onBoardThree: (context) => const OnBoardingThreeScreen(),
        AppRoutes.registerRoute: (context) => const RegisterScreen(),
        AppRoutes.signInRoute: (context) => const SignInScreen(),
      },
    );
  }
}
