
import 'package:flutter/material.dart';
import 'package:flutter_weather_app/style.dart';

class WeatherValueWidget extends StatelessWidget {
  const WeatherValueWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/day_rain.png',
          width: 150,
          height: 150,
          fit: BoxFit.cover,
        ),
        const SizedBox(width: 50.0),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Text(
                  '19',
                  style: TextStyle(
                      fontSize: 54,
                      color: AppStyle.textColor,
                      fontFamily: AppStyle.fontFamilyInterBold),
                ),
                Text(
                  'Rainy',
                  style: TextStyle(
                      fontSize: 20,
                      color: AppStyle.textColor,
                      fontFamily: AppStyle.fontFamilyInterRegular),
                ),
              ],
            ),
            Text('° C',
                style: TextStyle(
                    fontFamily: AppStyle.fontFamilyInterLight,
                    fontSize: 15,
                    color: AppStyle.textColor)),
          ],
        ),
      ],
    );
  }
}
