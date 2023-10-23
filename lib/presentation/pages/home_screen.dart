import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_forecast_app/controller/global_controller.dart';
import 'package:weather_forecast_app/presentation/utils/custom_color.dart';
import 'package:weather_forecast_app/presentation/widgets/comfart_level.dart';
import 'package:weather_forecast_app/presentation/widgets/current_weather_widget.dart';
import 'package:weather_forecast_app/presentation/widgets/daily_data_forecast.dart';
import 'package:weather_forecast_app/presentation/widgets/header_widget.dart';
import 'package:weather_forecast_app/presentation/widgets/hourly_data_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalController globaController =
      Get.put(GlobalController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Obx(
          () => globaController.checkLoadiing().isTrue
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : Center(
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      HeaderWidget(),
                      // for our current temp ('current)
                      CurrentWeatherWidget(
                        weatherDataCurrent:
                            globaController.getData().getCurrentWeather(),
                      ),
                      HourlyDataWidget(
                        weathreDataHourly:
                            globaController.getData().getHourlyWeather(),
                      ),
                      DailyDataForecast(
                        weatherDataDaily:
                            globaController.getData().getDailyWeather(),
                      ),
                      Container(
                        height: 1,
                        color: CustomColors.dividerLine,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ComfartLevel(
                          weathreDataCurrent:
                              globaController.getData().getCurrentWeather())
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
