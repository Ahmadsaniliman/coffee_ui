import 'package:coffee_shop_ui/Utils/app_colors.dart';
import 'package:coffee_shop_ui/Views/OnBoarding/on_board_three.dart';
import 'package:flutter/material.dart';
import 'package:stepper_list_view/stepper_list_view.dart';

class TrackOrderScreen extends StatelessWidget {
  const TrackOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> stepDataItems = [
      {
        'title': 'Order placed',
        'subtitle': '23 march, 2024, 04:36 PM',
      },
      {
        'title': 'In Progress',
        'subtitle': '23 march, 2024, 04:40 PM',
      },
      {
        'title': 'On Your way',
        'subtitle': '23 march, 2024, 05:10 PM',
      },
      {
        'title': 'Deliverd',
        'subtitle': '23 march, 2024, 05:10 PM',
      },
    ];
    final stepperData = List.generate(
        4,
        (index) => StepperItemData(
              id: '$index',
              content: ({
                'title': stepDataItems[index]['title'],
                'subtitle': stepDataItems[index]['subtitle'],
              }),
            )).toList();
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 15,
          ),
          child: Column(
            children: [
              const Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    color: AppColors.whiteColor,
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Text(
                    'Track Order',
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: SizedBox(
                  height: 250,
                  width: 302,
                  child: Image.asset(
                    'assets/icons/amico.png',
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    height: 68,
                    width: 68,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.primaryColor,
                    ),
                    child: Image.asset('assets/icons/time-line.png'),
                  ),
                  const SizedBox(width: 30),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Estimated Delivery time',
                        style: TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '45 - 55 min',
                        style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 318,
                width: 300,
                child: StepperListView(
                  stepperData: stepperData,
                  stepAvatar: (BuildContext context, value) {
                    return PreferredSize(
                      preferredSize: const Size.fromRadius(20),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.primaryColor,
                        ),
                        child: Image.asset('assets/icons/Vector (44).png'),
                      ),
                    );
                  },
                  stepContentWidget: (BuildContext context, data) {
                    final stepData = data as StepperItemData;
                    return ListTile(
                      title: Text(
                        stepData.content['title'],
                        style: const TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: 20,
                        ),
                      ),
                      subtitle: Text(
                        stepData.content['subtitle'],
                        style: const TextStyle(
                          color: AppColors.whiteColor,
                        ),
                      ),
                    );
                  },
                ),
              ),
              DefaultButton(
                text: 'Chat with rider',
                onTapped: () {},
                color: AppColors.primaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
