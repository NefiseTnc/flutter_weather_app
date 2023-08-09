import 'package:flutter/material.dart';
import 'package:flutter_weather_app/style.dart';
import 'package:flutter_weather_app/views/home/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: AppStyle.fontFamilyInter,
      ),
      home: const HomeView(),
    );
  }
}
