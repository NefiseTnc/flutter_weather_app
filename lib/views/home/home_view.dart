import 'package:flutter/material.dart';
import 'package:flutter_weather_app/style.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top,
            bottom: (MediaQuery.of(context).padding.bottom) * .5),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: AppStyle.backgroundLineerGradient,
        ),
        child: const SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderWidget(),
              SizedBox(height: 50),
              TitleWidget(),
              SizedBox(height: 50),
              WeatherValueWidget(),
              SizedBox(height: 50),
              WeatherDetailsWidget(),
              SizedBox(height: 25),
              WeatherListTitleWidget(),
              SizedBox(height: 10),
              WeatherListWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/icons/search_icon.png',
            width: 24,
            height: 24,
          ),
          Image.asset(
            'assets/icons/menu_icon.png',
            width: 24,
            height: 24,
          ),
        ],
      ),
    );
  }
}

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(left: 36.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: deviceWidth * .35,
            child: Text(
              'Stockholm,Sweden',
              style: TextStyle(
                  fontSize: 27,
                  color: AppStyle.textColor,
                  fontFamily: AppStyle.fontFamilyInterMedium),
            ),
          ),
          const SizedBox(height: 6.0),
          Text(
            'Tue, Jun 30  ',
            style: TextStyle(
                fontSize: 12,
                color: AppStyle.textColor,
                fontFamily: AppStyle.fontFamilyInterRegular),
          ),
        ],
      ),
    );
  }
}

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
