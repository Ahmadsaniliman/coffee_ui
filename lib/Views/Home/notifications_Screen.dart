// ignore_for_file: file_names

import 'package:coffee_shop_ui/Utils/app_colors.dart';
import 'package:coffee_shop_ui/Utils/routes.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 131,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: AppColors.bgColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 30,
                left: 15,
                right: 15,
              ),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(AppRoutes.trackOrderRoute);
                    },
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: AppColors.whiteColor,
                    ),
                  ),
                  const SizedBox(width: 120),
                  const Text(
                    'Notification',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: AppColors.whiteColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Today',
                  style: TextStyle(
                    color: AppColors.blackColor,
                    fontSize: 25,
                  ),
                ),
                Text(
                  'Mark all read',
                  style: TextStyle(
                    color: AppColors.blackColor,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SizedBox(
              height: 260,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 74,
                    width: double.infinity,
                    child: Row(
                      children: [
                        Container(
                          height: 74,
                          width: 74,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.primaryColor,
                          ),
                          child: Image.asset('assets/icons/Bicycle.png'),
                        ),
                        const SizedBox(width: 10),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Order Delivered',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              'Lorem ipsum dolor sit amet consectetur.\nScelerisque',
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                        const SizedBox(width: 85),
                        const Text('1hr'),
                      ],
                    ),
                  ),
                  Container(
                    height: 1,
                    width: double.infinity,
                    color: AppColors.lightBgColor,
                  ),
                  SizedBox(
                    height: 74,
                    width: double.infinity,
                    child: Row(
                      children: [
                        Container(
                          height: 74,
                          width: 74,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.primaryColor,
                          ),
                          child: Image.asset('assets/icons/Bicycle.png'),
                        ),
                        const SizedBox(width: 10),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Order Delivered',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              'Lorem ipsum dolor sit amet consectetur.\nScelerisque',
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                        const SizedBox(width: 85),
                        const Text('1hr'),
                      ],
                    ),
                  ),
                  Container(
                    height: 1,
                    width: double.infinity,
                    color: AppColors.lightBgColor,
                  ),
                  SizedBox(
                    height: 74,
                    width: double.infinity,
                    child: Row(
                      children: [
                        Container(
                          height: 74,
                          width: 74,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.primaryColor,
                          ),
                          child: Image.asset('assets/icons/Bicycle.png'),
                        ),
                        const SizedBox(width: 10),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Order Delivered',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              'Lorem ipsum dolor sit amet consectetur.\nScelerisque',
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                        const SizedBox(width: 85),
                        const Text('1hr'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          //
          //
          //
          //
          //
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Yesterday',
                  style: TextStyle(
                    color: AppColors.blackColor,
                    fontSize: 25,
                  ),
                ),
                Text(
                  'Mark all read',
                  style: TextStyle(
                    color: AppColors.blackColor,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SizedBox(
              height: 260,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 74,
                    width: double.infinity,
                    child: Row(
                      children: [
                        Container(
                          height: 74,
                          width: 74,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.primaryColor,
                          ),
                          child: Image.asset('assets/icons/Bicycle.png'),
                        ),
                        const SizedBox(width: 10),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Order Delivered',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              'Lorem ipsum dolor sit amet consectetur.\nScelerisque',
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                        const SizedBox(width: 85),
                        const Text('1hr'),
                      ],
                    ),
                  ),
                  Container(
                    height: 1,
                    width: double.infinity,
                    color: AppColors.lightBgColor,
                  ),
                  SizedBox(
                    height: 74,
                    width: double.infinity,
                    child: Row(
                      children: [
                        Container(
                          height: 74,
                          width: 74,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.primaryColor,
                          ),
                          child: Image.asset('assets/icons/Bicycle.png'),
                        ),
                        const SizedBox(width: 10),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Order Delivered',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              'Lorem ipsum dolor sit amet consectetur.\nScelerisque',
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                        const SizedBox(width: 85),
                        const Text('1hr'),
                      ],
                    ),
                  ),
                  Container(
                    height: 1,
                    width: double.infinity,
                    color: AppColors.lightBgColor,
                  ),
                  SizedBox(
                    height: 74,
                    width: double.infinity,
                    child: Row(
                      children: [
                        Container(
                          height: 74,
                          width: 74,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.primaryColor,
                          ),
                          child: Image.asset('assets/icons/Bicycle.png'),
                        ),
                        const SizedBox(width: 10),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Order Delivered',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              'Lorem ipsum dolor sit amet consectetur.\nScelerisque',
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                        const SizedBox(width: 85),
                        const Text('1hr'),
                      ],
                    ),
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
