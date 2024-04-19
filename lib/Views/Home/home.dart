import 'package:coffee_shop_ui/Utils/app_colors.dart';
import 'package:coffee_shop_ui/Views/Home/home_data_model.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> data = [
      'Hot Coffee',
      'Ice Teas',
      'Hot Teas',
      'Drinks',
      'Hot Coffee',
      'Ice Teas',
      'Hot Teas',
      'Drinks',
    ];
    int indexOne = 0;
    return Scaffold(
      bottomNavigationBar: Container(
        height: 70,
        width: double.infinity,
        color: AppColors.primaryColor,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: AppColors.bgColor,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 20,
              right: 15,
              left: 15,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/images/Image-60.png',
                    ),
                    const SizedBox(width: 10),
                    const Column(
                      children: [
                        Text(
                          'Shahzaib',
                          style: TextStyle(
                            color: AppColors.whiteColor,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Good Morning!',
                          style: TextStyle(
                            color: AppColors.whiteColor,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 140),
                    Row(
                      children: [
                        Image.asset('assets/icons/search-line.png'),
                        const SizedBox(width: 20),
                        Image.asset('assets/icons/Vector (37).png'),
                      ],
                    ),
                  ],
                ),
                //
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors.primaryColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 20,
                            horizontal: 15,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Get 20% Discount\nOn your First Order!',
                                style: TextStyle(
                                  color: AppColors.whiteColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(height: 15),
                              Text(
                                'Lorem ipsum dolor sit amet consectetur.\nVestibulum eget blandit mattis ',
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Image.asset(
                          'assets/images/image 12.png',
                        ),
                      ],
                    ),
                  ),
                ),
                //
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ...List.generate(
                        data.length,
                        (index) => Container(
                          padding: const EdgeInsets.only(right: 15),
                          child: Text(
                            data[index],
                            style: TextStyle(
                              color: index == indexOne
                                  ? AppColors.primaryColor
                                  : AppColors.whiteColor,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //
                const SizedBox(height: 15),
                SizedBox(
                  height: 450,
                  width: double.infinity,
                  child: GridView(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      childAspectRatio: 0.9,
                    ),
                    children: [
                      ...List.generate(
                        4,
                        (index) => Container(
                          padding: const EdgeInsets.all(17),
                          decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                top: 10,
                                left: 30,
                                child: Image.asset(homeData[index].image),
                              ),
                              Positioned(
                                top: 0,
                                right: 0,
                                child: Image.asset(
                                  homeData[index].image1,
                                ),
                              ),
                              Positioned(
                                bottom: 30,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      homeData[index].text1,
                                      style: const TextStyle(
                                        color: AppColors.whiteColor,
                                        fontSize: 20,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 50,
                                    ),
                                    Text(
                                      homeData[index].price,
                                      // ignore: prefer_const_constructors
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                child: Text(
                                  homeData[index].text2,
                                  style: const TextStyle(
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            ],
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
    );
  }
}