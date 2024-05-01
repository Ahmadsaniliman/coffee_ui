import 'package:coffee_shop_ui/Utils/app_colors.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:flutter/material.dart';

class PofileScreen extends StatelessWidget {
  const PofileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: AppColors.primaryColor,
        color: AppColors.primaryColor,
        items: [
          Image.asset(
            'assets/icons/home-3-line.png',
            color: AppColors.blackColor,
          ),
          Image.asset(
            'assets/icons/shopping-cart-2-line.png',
            color: AppColors.blackColor,
          ),
          Image.asset(
            'assets/icons/heart-line.png',
            color: AppColors.blackColor,
          ),
          Image.asset(
            'assets/icons/user-line (1).png',
            color: AppColors.blackColor,
          ),
        ],
      ),
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 15,
            right: 15,
            left: 15,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.arrow_back_ios,
                    color: AppColors.whiteColor,
                  ),
                  const Text(
                    'Profile',
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Image.asset('assets/icons/notification-4-line.png'),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: Column(
                  children: [
                    SizedBox(
                      height: 90,
                      width: 90,
                      child: Stack(
                        children: [
                          Container(
                            height: 82,
                            width: 82,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.primaryColor,
                            ),
                            child: Image.asset(
                              'assets/images/Image-60.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            bottom: 5,
                            right: 0,
                            child: Container(
                              height: 24,
                              width: 24,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.primaryColor,
                              ),
                              child:
                                  Image.asset('assets/icons/Vector (41).png'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Text(
                      'Shahzaib R.',
                      style: TextStyle(
                          color: AppColors.whiteColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.primaryColor,
                          ),
                          child: Center(
                            child:
                                Image.asset('assets/icons/user-line (1).png'),
                          ),
                        ),
                        const SizedBox(width: 15),
                        const Text(
                          'Your Profile',
                          style: TextStyle(
                            color: AppColors.whiteColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.primaryColor,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.primaryColor,
                          ),
                          child: Center(
                            child: Image.asset('assets/icons/article-line.png'),
                          ),
                        ),
                        const SizedBox(width: 15),
                        const Text(
                          'My Orders',
                          style: TextStyle(
                            color: AppColors.whiteColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.primaryColor,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.primaryColor,
                          ),
                          child: Center(
                            child:
                                Image.asset('assets/icons/user-line (2).png'),
                          ),
                        ),
                        const SizedBox(width: 15),
                        const Text(
                          'Seetings',
                          style: TextStyle(
                            color: AppColors.whiteColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.primaryColor,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.primaryColor,
                          ),
                          child: Center(
                            child: Image.asset(
                                'assets/icons/git-repository-private-line.png'),
                          ),
                        ),
                        const SizedBox(width: 15),
                        const Text(
                          'Privacy Policy',
                          style: TextStyle(
                            color: AppColors.whiteColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.primaryColor,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.primaryColor,
                          ),
                          child: Center(
                            child: Image.asset(
                                'assets/icons/user-add-line (1).png'),
                          ),
                        ),
                        const SizedBox(width: 15),
                        const Text(
                          'Invite Friend',
                          style: TextStyle(
                            color: AppColors.whiteColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.primaryColor,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.primaryColor,
                          ),
                          child: Center(
                            child: Image.asset(
                                'assets/icons/logout-box-r-line.png'),
                          ),
                        ),
                        const SizedBox(width: 15),
                        InkWell(
                          onTap: () async {
                            return await showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                backgroundColor: AppColors.primaryColor,
                                title: const Text(
                                  'Log Out',
                                  style: TextStyle(
                                    color: AppColors.whiteColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                content: const Text(
                                  'Are you sure you want to logout?',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: AppColors.blackColor,
                                  ),
                                ),
                                actions: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: const BoxDecoration(
                                      color: AppColors.bgColor,
                                    ),
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop(true);
                                      },
                                      child: const Text(
                                        'Yes',
                                        style: TextStyle(
                                          color: AppColors.whiteColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      border: Border.all(),
                                    ),
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: const Text('No'),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                          child: const Text(
                            'LogOut',
                            style: TextStyle(
                              color: AppColors.whiteColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.primaryColor,
                    )
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
