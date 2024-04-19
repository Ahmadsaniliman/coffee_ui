import 'package:coffee_shop_ui/Views/OnBoarding/on_board_data.dart';
import 'package:flutter/material.dart';

class OnBoardingScreens extends StatefulWidget {
  const OnBoardingScreens({super.key});

  @override
  State<OnBoardingScreens> createState() => _OnBoardingScreensState();
}

class _OnBoardingScreensState extends State<OnBoardingScreens> {
  int? selected;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: onBoardingScreensData.length,
        itemBuilder: (context, index) => onBoardingScreensData[index],
        onPageChanged: (value) {
          value == selected;
        },
      ),
    );
  }
}
