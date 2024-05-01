import 'package:coffee_shop_ui/Utils/app_colors.dart';
import 'package:flutter/material.dart';

class ChartScreen extends StatelessWidget {
  const ChartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.9),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: 35,
              left: 15,
            ),
            height: 157,
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
              color: AppColors.bgColor,
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.arrow_back_ios,
                  color: AppColors.whiteColor,
                ),
                const SizedBox(width: 10),
                Image.asset('assets/images/Ellipse 99.png'),
                const SizedBox(width: 15),
                const Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mehboob Ali',
                        style: TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Online',
                        style: TextStyle(
                          color: AppColors.whiteColor,
                          fontWeight: FontWeight.bold,
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
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
              left: 15,
              right: 15,
            ),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  height: 80,
                  width: 222,
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Text(
                      'Lorem ipsum dolor sit amets consectetur. Cursus ornare nullam vel id ipsum sagittis euismod mattis amet. In consectetur enim mauris turpis dictum.'),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  height: 80,
                  width: 222,
                  decoration: BoxDecoration(
                    color: AppColors.bgColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Text(
                    'Lorem ipsum dolor sit amets consectetur. Cursus ornare nullam vel id ipsum sagittis euismod mattis amet. In consectetur enim mauris turpis dictum.',
                    style: TextStyle(
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  height: 80,
                  width: 222,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.whiteColor,
                  ),
                  child: const Text(
                    'Lorem ipsum dolor sit amets consectetur. Cursus ornare nullam vel id ipsum sagittis euismod mattis amet. In consectetur enim mauris turpis dictum.',
                    style: TextStyle(
                      color: AppColors.blackColor,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                    top: 10,
                    left: 10,
                    bottom: 10,
                    right: 15,
                  ),
                  height: 50,
                  width: 248,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.bgColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: const BoxDecoration(
                          color: AppColors.primaryColor,
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset('assets/icons/Vector (45).png'),
                      ),
                      Image.asset('assets/icons/Waveform.png'),
                      const Text(
                        '0:05',
                        style: TextStyle(
                          color: AppColors.whiteColor,
                        ),
                      ),
                      Image.asset('assets/icons/Player Volume.png'),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                    top: 10,
                    left: 10,
                    bottom: 10,
                    right: 15,
                  ),
                  height: 50,
                  width: 248,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.whiteColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: const BoxDecoration(
                          color: AppColors.primaryColor,
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset('assets/icons/Vector (45).png'),
                      ),
                      Image.asset(
                        'assets/icons/Waveform.png',
                        color: AppColors.blackColor,
                      ),
                      const Text(
                        '0:05',
                        style: TextStyle(
                          color: AppColors.blackColor,
                        ),
                      ),
                      Image.asset(
                        'assets/icons/Player Volume.png',
                        color: AppColors.blackColor,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  height: 80,
                  width: 222,
                  decoration: BoxDecoration(
                    color: AppColors.bgColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Text(
                    'Lorem ipsum dolor sit amets consectetur. Cursus ornare nullam vel id ipsum sagittis euismod mattis amet. In consectetur enim mauris turpis dictum.',
                    style: TextStyle(
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 59,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Container(
                        height: 59,
                        width: 280,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                          border: Border.all(
                            color: AppColors.bgColor,
                            width: 2,
                          ),
                          color: AppColors.whiteColor,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 17,
                            horizontal: 10,
                          ),
                          child: Text(
                            'Type Message Here.....',
                            style: TextStyle(color: AppColors.blackColor),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        height: 59,
                        width: 100,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                          color: AppColors.bgColor,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset('assets/icons/mic-line.png'),
                            Image.asset('assets/icons/send-plane-2-line.png'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
