import 'package:coffee_shop_ui/Utils/app_colors.dart';
import 'package:coffee_shop_ui/Utils/routes.dart';
import 'package:coffee_shop_ui/Views/OnBoarding/on_board_three.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/image 10.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/Rectangle 4 (5).png'),
              fit: BoxFit.fill,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 90),
                  child: Column(
                    children: [
                      Image.asset('assets/images/Vector (43).png'),
                      const SizedBox(height: 20),
                      const Text(
                        'Welcome to Register',
                        style: TextStyle(
                          color: AppColors.whiteColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ),
                //
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 30, bottom: 35),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFF16181C),
                        ),
                        child: const TextField(
                          style: TextStyle(color: AppColors.whiteColor),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 15),
                            border: InputBorder.none,
                            hintText: 'Full Name',
                            hintStyle: TextStyle(
                              color: Color(0xFF828282),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFF16181C),
                        ),
                        child: const TextField(
                          style: TextStyle(color: AppColors.whiteColor),
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 15),
                              border: InputBorder.none,
                              hintText: 'E-mail Address',
                              hintStyle: TextStyle(color: Color(0xFF828282))),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFF16181C),
                        ),
                        child: const TextField(
                          style: TextStyle(color: AppColors.whiteColor),
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 15),
                              border: InputBorder.none,
                              hintText: 'Password',
                              hintStyle: TextStyle(color: Color(0xFF828282))),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFF16181C),
                        ),
                        child: const TextField(
                          style: TextStyle(color: AppColors.whiteColor),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 15),
                            border: InputBorder.none,
                            hintText: 'Confirm Password',
                            hintStyle: TextStyle(
                              color: Color(0xFF828282),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      DefaultButton(
                        text: 'Register',
                        onTapped: () {
                          Navigator.of(context).pushNamed(AppRoutes.signInRoute);
                        },
                        color: AppColors.primaryColor,
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 2,
                      width: 150,
                      decoration: const BoxDecoration(
                        color: AppColors.primaryColor,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'Or Login With',
                        style: TextStyle(
                          color: AppColors.whiteColor,
                        ),
                      ),
                    ),
                    Container(
                      height: 2,
                      width: 150,
                      decoration: const BoxDecoration(
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 45,
                    vertical: 35,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/icons/facebook logo.png'),
                      Image.asset('assets/icons/Google logo.png'),
                      Image.asset('assets/icons/twitter-6 logo.png'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 120,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Already have an account',
                        style: TextStyle(
                          color: AppColors.whiteColor,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed(AppRoutes.signInRoute);
                        },
                        child: const Text(
                          'Login?',
                          style: TextStyle(
                            color: AppColors.primaryColor,
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
