import 'dart:convert';
import 'package:flutter_weather_app/models/weather_model.dart';
import 'package:http/http.dart';

//https://weather.visualcrossing.com/VisualCrossingWebServices/rest/services/timeline/London,UK?key=PXWTQJGS8KSD3756CQCFN7374
//https://weather.visualcrossing.com/VisualCrossingWebServices/rest/services/timeline/[location]/[date1]/[date2]?key=YOUR_API_KEY

class WeatherService {
  Future<WeatherModel?> fetchWeather({required String location}) async {
    var url = Uri.parse(
        'https://weather.visualcrossing.com/VisualCrossingWebServices/rest/services/timeline/$location?key=PXWTQJGS8KSD3756CQCFN7374');
    Response response = await get(url);
    WeatherModel weatherModel;
    try {
      if (response.statusCode == 200) {
        var json = jsonDecode(response.body);
        weatherModel = WeatherModel.fromJson(json);
        print(weatherModel.resolvedAddress.toString());
      }
    } catch (e) {
      print(e);
    }

    return null;
  }
}
