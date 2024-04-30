import 'package:coffee_shop_ui/Utils/app_colors.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> data = [
      {
        'image': 'assets/images/Group 23.png',
        'name': 'Robusta',
        'with': 'with milk',
        'price': '\$20',
      },
      {
        'image': 'assets/images/image 10 (1).png',
        'name': 'Liberica',
        'with': 'With Water',
        'price': '\$12',
      },
      {
        'image': 'assets/images/image 14.png',
        'name': 'Cirtus',
        'with': 'With Lemon',
        'price': '\$20',
      },
    ];
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
                      confirmDismiss: (direction) async {
                        return await showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text('Hello'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text('no'),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop(index);
                                },
                                child: const Text('Yes'),
                              ),
                            ],
                          ),
                        );
                      },
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
                                Image.asset(data[index]['image']!),
                                const SizedBox(width: 20),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 15,
                                  ),
                                  child: Column(
                                    children: [
                                      Text(
                                        data[index]['name']!,
                                        style: const TextStyle(
                                          color: AppColors.whiteColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Text(
                                        data[index]['with']!,
                                        style: const TextStyle(
                                          color: AppColors.whiteColor,
                                          fontSize: 10,
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        data[index]['price']!,
                                        style: const TextStyle(
                                          color: AppColors.blackColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
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
                height: 175,
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
                    const Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Row(
                        children: [
                          Text(
                            'Sub total',
                            style: TextStyle(
                              color: AppColors.blackColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                              's...................................................................'),
                          Text(
                            '\$44',
                            style: TextStyle(
                              color: AppColors.blackColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Row(
                        children: [
                          Text(
                            'Shipping',
                            style: TextStyle(
                              color: AppColors.blackColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                              's...................................................................'),
                          Text(
                            '\$6',
                            style: TextStyle(
                              color: AppColors.blackColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Row(
                        children: [
                          Text(
                            'Total',
                            style: TextStyle(
                              color: AppColors.blackColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                              's.........................................................................'),
                          Text(
                            '\$50',
                            style: TextStyle(
                              color: AppColors.blackColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    //
                    //
                    //
                  ],
                ),
              ),
              const SizedBox(height: 40),
              Container(
                height: 59,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: AppColors.primaryColor),
                ),
                child: const Center(
                  child: Text(
                    'Finalize Order',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
