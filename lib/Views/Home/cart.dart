import 'package:coffee_shop_ui/Utils/app_colors.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.dkBgColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 10,
            left: 15,
            right: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.arrow_back_ios,
                    color: AppColors.whiteColor,
                  ),
                  const Text(
                    'Cart',
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Image.asset('assets/icons/notification-4-line.png')
                ],
              ),
              //
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'My Order',
                      style: TextStyle(
                        color: AppColors.whiteColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text.rich(
                      style: TextStyle(
                        color: AppColors.whiteColor,
                      ),
                      TextSpan(
                        text: 'You Have 3',
                        children: [
                          TextSpan(
                            text: ' items ',
                            style: TextStyle(
                              color: AppColors.primaryColor,
                            ),
                          ),
                          TextSpan(
                            text: 'in your cart',
                            style: TextStyle(
                              color: AppColors.whiteColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //
              //
              Column(
                children: [
                  ...List.generate(
                    3,
                    (index) => Dismissible(
                      key: UniqueKey(),
                      background: const Icon(
                        Icons.delete,
                        color: AppColors.whiteColor,
                      ),
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 7),
                        height: 92,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset('assets/images/Group 23.png'),
                                const SizedBox(width: 20),
                                const Padding(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 15,
                                  ),
                                  child: Column(
                                    children: [
                                      Text(
                                        'Robusta',
                                        style: TextStyle(
                                          color: AppColors.whiteColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Text(
                                        'with milk',
                                        style: TextStyle(
                                          color: AppColors.whiteColor,
                                          fontSize: 10,
                                        ),
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                        '\$20',
                                        style: TextStyle(
                                          color: AppColors.blackColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: 32,
                              width: 105,
                              child: Row(
                                children: [
                                  Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: AppColors.dkBgColor),
                                    child: const Center(
                                      child: Text(
                                        '-',
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: AppColors.whiteColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 7),
                                    child: Text(
                                      '1',
                                      style: TextStyle(
                                          color: AppColors.whiteColor,
                                          fontSize: 20),
                                    ),
                                  ),
                                  Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: AppColors.dkBgColor),
                                    child: const Center(
                                      child: Text(
                                        '+',
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: AppColors.whiteColor,
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
                  ),
                ],
              ),
              //
              //
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.primaryColor),
                height: 174,
                width: double.infinity,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                          ),
                          height: 40,
                          width: 260,
                          child: const TextField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 15,
                                horizontal: 10,
                              ),
                              hintText: 'Enter your coupan code here',
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                fontSize: 10,
                                color: AppColors.blackColor,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 100,
                          decoration: const BoxDecoration(
                            color: AppColors.dkBgColor,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              'Apply',
                              style: TextStyle(
                                color: AppColors.whiteColor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Sub total',
                          style: TextStyle(
                            color: AppColors.blackColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        
                        Text(
                          '\$44',
                          style: TextStyle(
                            color: AppColors.blackColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
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
