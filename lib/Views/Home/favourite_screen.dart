import 'package:coffee_shop_ui/Utils/app_colors.dart';
import 'package:coffee_shop_ui/Utils/enum.dart';
import 'package:coffee_shop_ui/Utils/routes.dart';
import 'package:coffee_shop_ui/Views/Home/home.dart';
import 'package:coffee_shop_ui/Views/Home/home_data_model.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNav(
        selectedMenu: BottomNavBarItems.favourite,
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
                    'Favourite',
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
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Row(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                      height: 45,
                      width: 300,
                      child: const TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: 15,
                          ),
                          hintText: 'Enter your coupan code here',
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                            fontSize: 15,
                            color: AppColors.blackColor,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 45,
                      width: 80,
                      decoration: const BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.search,
                          color: AppColors.blackColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //
              //
              SizedBox(
                height: 449,
                width: double.infinity,
                child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    childAspectRatio: 0.9,
                  ),
                  children: [
                    ...List.generate(
                      4,
                      (index) => InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed(AppRoutes.singProuductRoute);
                        },
                        child: Container(
                          padding: const EdgeInsets.all(17),
                          decoration: const BoxDecoration(
                            color: AppColors.primaryColor,
                          ),
                          child: Stack(
                            children: [
                              Image.asset(homeData[index].image),
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
