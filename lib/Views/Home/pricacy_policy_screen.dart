import 'package:coffee_shop_ui/Utils/app_colors.dart';
import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

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
            child: const Padding(
              padding: EdgeInsets.only(top: 25, left: 15),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    color: AppColors.whiteColor,
                  ),
                  SizedBox(width: 100),
                  Text(
                    'Privacy Policy',
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Terms & Conditions',
                  style: TextStyle(
                    color: AppColors.blackColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                      style: TextStyle(height: 2),
                      '''Lorem ipsum dolor sit amet consectetur.Consequat tempus velit tempor eros.Orci egestas pharetra at pharetra lobortis at.Morbi sagittis dui orci quis arcu massa pellentesque libero euismod.Erat laoreet sit mi dictumst ultrices amet.Elementum in commodo scelerisque non in.\nPulvinar tortor ac aliquam tortor enim.Volutpat aliquam ut purus nibh quisque amet ut morbi.Sed eget auctor quis nibh mattis feugiat tincidunt ridiculus accumsan.Nisl fermentum nulla mattis elementum condimentum leo massa.Potenti leo feugiat orci at scelerisque lacus nibh.Egestas cras sem vestibulum maecenas massa pulvinar rhoncus pharetra arcu.Turpis quam non praesent dictum et arcu ultrices sed.Pulvinar tortor ac aliquam tortor enim.Volutpat aliquam ut purus nibh quisque amet ut morbi.Sed eget auctor quis nibh mattis feugiat tincidunt ridiculus accumsan.Nisl fermentum nulla mattis elementum condimentum leo massa.Potenti leo feugiat orci at scelerisque lacus nibh.Egestas cras sem vestibulum maecenas massa pulvinar rhoncus pharetra arcu.Turpis quam non praesent dictum et arcu ultrices sed.'''),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
