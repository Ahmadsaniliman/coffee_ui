import 'package:coffee_shop_ui/Utils/app_colors.dart';
import 'package:coffee_shop_ui/Views/OnBoarding/on_board_three.dart';
import 'package:flutter/material.dart';

class PaymentDoneScreen extends StatelessWidget {
  const PaymentDoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 20,
            left: 15,
            right: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(
                Icons.arrow_back_ios,
                color: AppColors.whiteColor,
              ),
              const Spacer(),
              Center(
                child: Column(
                  children: [
                    Container(
                      height: 175,
                      width: 175,
                      decoration: const BoxDecoration(
                          color: AppColors.primaryColor,
                          shape: BoxShape.circle),
                      child: Image.asset('assets/icons/Vector (39).png'),
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      'Payment Successful',
                      style: TextStyle(
                        color: AppColors.whiteColor,
                        fontSize: 30,
                      ),
                    ),
                    const Text(
                      'Thank you for your purchase',
                      style: TextStyle(
                        color: AppColors.whiteColor,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              const Spacer(),
              const Spacer(),
              const Spacer(),
              DefaultButton(
                text: 'Track Order',
                color: AppColors.primaryColor,
                onTapped: () {},
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
