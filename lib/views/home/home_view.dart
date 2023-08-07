import 'package:flutter/material.dart';
import 'package:flutter_weather_app/style.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceTopPadding = MediaQuery.of(context).padding.top;
    var deviceBottomPadding = MediaQuery.of(context).padding.top;
    return Scaffold(
      body: Container(
        padding:
            EdgeInsets.only(top: deviceTopPadding, bottom: deviceBottomPadding),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: AppStyle.backgroundLineerGradient,
        ),
        child: const Column(
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
            TabTitleWidget(),
            TabItemListWidget(),
          ],
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

class TabTitleWidget extends StatelessWidget {
  const TabTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class TabItemListWidget extends StatelessWidget {
  const TabItemListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
