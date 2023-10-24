import 'dart:convert';

import 'package:weather_forecast_app/data/model/weather_data.daily.dart';
import 'package:weather_forecast_app/data/model/weather_data.dart';
import 'package:http/http.dart' as http;
import 'package:weather_forecast_app/data/model/weather_data_current.dart';
import 'package:weather_forecast_app/data/model/weather_data_hourly.dart';
import 'package:weather_forecast_app/presentation/utils/api_url.dart';

class FetchWeatherAPI {
  WeatherData? weatherData;

  // process weather data from response  -> to JSON
  Future<WeatherData> processData(lat, lon) async {
    var response = await http.get(Uri.parse(apiUrl(lat, lon)));
    var jsonString = jsonDecode(response.body);
    weatherData = WeatherData(
        WeathreDataCurrent.fromJson(jsonString),
        WeathreDataHourly.fromJson(jsonString),
        WeathreDataDaily.fromJson(jsonString));

    return weatherData!;
  }
}
