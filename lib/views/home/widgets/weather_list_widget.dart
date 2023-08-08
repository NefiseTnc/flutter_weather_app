import 'package:flutter/material.dart';
import 'package:flutter_weather_app/style.dart';

class WeatherListWidget extends StatelessWidget {
  const WeatherListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(left: 12.0),
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _weatherListItem('assets/images/day_sleet.png', '13:00', '19'),
          _weatherListItem('assets/images/cloudy.png', '13:00', '18'),
          _weatherListItem('assets/images/day_clear.png', '14:00', '17'),
          _weatherListItem('assets/images/fog.png', '15:00', '16'),
          _weatherListItem('assets/images/mist.png', '16:00', '15'),
          _weatherListItem('assets/images/overcast.png', '17:00', '14'),
          _weatherListItem('assets/images/rain.png', '18:00', '12'),
          _weatherListItem('assets/images/rain_thunder.png', '19:00', '10'),
          _weatherListItem('assets/images/day_rain.png', '20:00', '9'),
          _weatherListItem('assets/images/day_sleet.png', '21:00', '8'),
        ],
      ),
    );
  }

  Widget _weatherListItem(String imageUrl, String hour, String degree) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
      margin: const EdgeInsets.only(right: 10.0),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(.36),
          borderRadius: const BorderRadius.all(Radius.circular(24))),
      child: Column(
        children: [
          Text(
            hour,
            style: TextStyle(
              fontFamily: AppStyle.fontFamilyInterRegular,
              fontSize: 15,
            ),
          ),
          Image.asset(
            imageUrl,
            width: 54,
            height: 54,
            fit: BoxFit.cover,
          ),
          Text(
            '$degree °',
            style: TextStyle(
              fontFamily: AppStyle.fontFamilyInterBold,
              fontSize: 17,
            ),
          )
        ],
      ),
    );
  }
}
