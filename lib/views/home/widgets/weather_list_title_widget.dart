
import 'package:flutter/material.dart';
import 'package:flutter_weather_app/style.dart';

class WeatherListTitleWidget extends StatelessWidget {
  const WeatherListTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Today',
                style: TextStyle(
                    fontSize: 15,
                    color: AppStyle.textColor,
                    fontFamily: AppStyle.fontFamilyInterBold),
              ),
              Row(
                children: [
                  Text(
                    'Next 7 Days',
                    style: TextStyle(
                        fontSize: 15,
                        color: const Color(0xFFD6996B),
                        fontFamily: AppStyle.fontFamilyInterRegular),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Image.asset(
                    'assets/icons/next_arrow_icon.png',
                    width: 10,
                    height: 10,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 5.0),
          const Divider(
            color: Color(0xFFD6996B),
          )
        ],
      ),
    );
  }
}
