import 'package:flutter/material.dart';
import 'package:flutter_weather_app/services/weather_service.dart';
import 'package:flutter_weather_app/style.dart';
import 'package:flutter_weather_app/views/home/widgets/header_widget.dart';
import 'package:flutter_weather_app/views/home/widgets/title_widget.dart';
import 'package:flutter_weather_app/views/home/widgets/weather_details_widget.dart';
import 'package:flutter_weather_app/views/home/widgets/weather_list_title_widget.dart';
import 'package:flutter_weather_app/views/home/widgets/weather_list_widget.dart';
import 'package:flutter_weather_app/views/home/widgets/weather_value_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    WeatherService weatherService = WeatherService();
    weatherService.fetchWeather(location: 'Izmir');
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
