
import 'package:flutter/material.dart';
import 'package:flutter_weather_app/style.dart';

class WeatherDetailsWidget extends StatelessWidget {
  const WeatherDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          _item('assets/icons/rain_fall_icon.png', 'RainFall', '3cm'),
          const SizedBox(height: 10),
          _item('assets/icons/wind_icon.png', 'Wind', '19km/h'),
          const SizedBox(height: 10),
          _item('assets/icons/humidity_icon.png', 'Humidity', '64%'),
        ],
      ),
    );
  }

  Widget _item(String imageUrl, String title, String value) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      height: 80,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(.36),
          borderRadius: const BorderRadius.all(Radius.circular(24))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 50,
                height: 50,
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.white.withOpacity(.9),
                ),
                child: Image.asset(
                  imageUrl,
                ),
              ),
              const SizedBox(width: 15),
              Text(
                title,
                style: TextStyle(
                    fontSize: 15,
                    color: AppStyle.textColor,
                    fontFamily: AppStyle.fontFamilyInterRegular),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 17.0,
            ),
            child: Text(
              value,
              style: TextStyle(
                  fontSize: 15,
                  color: AppStyle.textColor,
                  fontFamily: AppStyle.fontFamilyInterRegular),
            ),
          ),
        ],
      ),
    );
  }
}
