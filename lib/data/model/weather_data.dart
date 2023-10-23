import 'package:weather_forecast_app/data/model/weather_data.daily.dart';
import 'package:weather_forecast_app/data/model/weather_data_current.dart';
import 'package:weather_forecast_app/data/model/weather_data_hourly.dart';

class WeatherData {
  final WeathreDataCurrent? current;
  final WeathreDataHourly? hourly;
  final WeathreDataDaily? daily;

  WeatherData([this.current, this.hourly, this.daily]);

  // create a function to fetch this value
  WeathreDataCurrent getCurrentWeather() => current!;
  WeathreDataHourly getHourlyWeather() => hourly!;
  WeathreDataDaily getDailyWeather() => daily!;
}
