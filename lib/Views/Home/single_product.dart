import 'package:coffee_shop_ui/Utils/app_colors.dart';
import 'package:coffee_shop_ui/Views/OnBoarding/on_board_three.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SingleProductScreen extends StatelessWidget {
  const SingleProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              color: AppColors.dkBgColor,
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 350),
              child: Column(
                children: [
                  const Text(
                    'ingredients',
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 150,
                    width: double.infinity,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          top: 50,
                          child: Image.asset('assets/images/Vector 2 (1).png'),
                        ),
                        Positioned(
                          top: 20,
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: AppColors.primaryColor,
                            ),
                            child: Image.asset(
                                'assets/images/Milk Carton (1).png'),
                          ),
                        ),
                        Positioned(
                          left: 50,
                          top: 90,
                          child: Container(
                            height: 10,
                            width: 10,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.primaryColor,
                            ),
                          ),
                        ),
                        Positioned(
                          right: 50,
                          top: 90,
                          child: Container(
                            height: 10,
                            width: 10,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.primaryColor,
                            ),
                          ),
                        ),
                        const Positioned(
                          bottom: 20,
                          child: Text(
                            'Milk',
                            style: TextStyle(
                              color: AppColors.whiteColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //
                  Column(
                    children: [
                      const Text(
                        'Coffeee Size',
                        style: TextStyle(
                          color: AppColors.whiteColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 66,
                                  width: 66,
                                  decoration: BoxDecoration(
                                    color: AppColors.primaryColor,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Image.asset(
                                      'assets/icons/drinks-line.png'),
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  'Small',
                                  style: TextStyle(
                                    color: AppColors.primaryColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            //
                            //
                            Column(
                              children: [
                                Container(
                                  height: 94,
                                  width: 94,
                                  decoration: BoxDecoration(
                                    color: AppColors.primaryColor,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Image.asset(
                                      'assets/icons/drinks-line (1).png'),
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  'Medium',
                                  style: TextStyle(
                                    color: AppColors.primaryColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            //
                            //
                            //
                            Column(
                              children: [
                                Container(
                                  height: 122,
                                  width: 122,
                                  decoration: BoxDecoration(
                                    color: AppColors.primaryColor,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Image.asset(
                                      'assets/icons/drinks-line (2).png'),
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  'Large',
                                  style: TextStyle(
                                    color: AppColors.primaryColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ), //
                  Container(
                    height: 31,
                    width: 106,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 31,
                          width: 30,
                          decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                              child: Text(
                            '-',
                            style: TextStyle(fontSize: 20),
                          )),
                        ),
                        const Text(
                          '5',
                          style: TextStyle(
                            fontSize: 20,
                            color: AppColors.whiteColor,
                          ),
                        ),
                        Container(
                          height: 31,
                          width: 30,
                          decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Text(
                              '+',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      right: 20,
                      left: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          '\$20',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: AppColors.whiteColor,
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 300,
                          decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              borderRadius: BorderRadius.circular(20)),
                          child: const Center(
                            child: Text(
                              'Add To Cart',
                              style: TextStyle(
                                color: AppColors.whiteColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 340,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/image 18.png'),
                fit: BoxFit.fill,
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.only(
                bottom: 200,
                left: 10,
                right: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    color: AppColors.whiteColor,
                  ),
                  Text(
                    'Liberica Coffee',
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 30,
                    ),
                  ),
                  Icon(
                    Icons.favorite,
                    color: AppColors.whiteColor,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
