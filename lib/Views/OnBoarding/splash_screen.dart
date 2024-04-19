import 'package:coffee_shop_ui/Utils/app_colors.dart';
import 'package:coffee_shop_ui/Utils/routes.dart';
import 'package:flutter/material.dart';

class SplashOneSceen extends StatelessWidget {
  const SplashOneSceen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.contain,
            image: AssetImage(
              'assets/images/unsplash_SCbq6uKCyMY.png',
            ),
          ),
        ),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(height: 250),
            Image.asset('assets/images/coffeescript logo (1).png'),
            const SizedBox(height: 350),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(AppRoutes.onboardingscreens);
              },
              child: Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.primaryColor,
                ),
                child: const Center(
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
