import 'package:coffee_shop_ui/Utils/app_colors.dart';
import 'package:coffee_shop_ui/Utils/routes.dart';
import 'package:flutter/material.dart';

class OnBoardingThreeScreen extends StatelessWidget {
  const OnBoardingThreeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int selectedOne = 2;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/image 9.png'),
            fit: BoxFit.contain,
          ),
        ),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/Rectangle 1 (3).png'),
              fit: BoxFit.contain,
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 50,
                  horizontal: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ...List.generate(
                          3,
                          (index) => Container(
                            margin: const EdgeInsets.only(right: 5),
                            height: 2,
                            width: selectedOne == index ? 25 : 10,
                            decoration: BoxDecoration(
                              color: selectedOne == index
                                  ? AppColors.primaryColor
                                  : AppColors.whiteColor,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        'Skip',
                        style: TextStyle(
                            color: AppColors.whiteColor, fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 100),
              const Text(
                'Unlock bean\nsecrets',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.whiteColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Lorem ipsum dolor sit amet consectetur.\nVestibulum eget blandit mattis ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.primaryColor,
                ),
              ),
              //
              const SizedBox(height: 350),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    DefaultButton(
                      text: 'Register',
                      onTapped: () {
                        Navigator.of(context)
                            .pushNamed(AppRoutes.registerRoute);
                      },
                      color: AppColors.primaryColor,
                      textColor: AppColors.dkBgColor,
                    ),
                    const SizedBox(height: 10),
                    DefaultButton(
                      text: 'Sign In',
                      onTapped: () {
                        Navigator.of(context)
                            .popAndPushNamed(AppRoutes.signInRoute);
                      },
                      // color: AppColors.primaryColor,
                      textColor: AppColors.primaryColor,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    super.key,
    this.color,
    required this.text,
    this.textColor,
    required this.onTapped,
  });

  final Color? color;
  final String text;
  final Color? textColor;
  final VoidCallback onTapped;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapped,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.primaryColor),
          color: color,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
