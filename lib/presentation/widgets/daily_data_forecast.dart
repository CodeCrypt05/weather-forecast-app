import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:weather_forecast_app/data/model/weather_data.daily.dart';
import 'package:weather_forecast_app/presentation/utils/custom_color.dart';

class DailyDataForecast extends StatelessWidget {
  final WeathreDataDaily weatherDataDaily;
  const DailyDataForecast({super.key, required this.weatherDataDaily});

  // string manipulation
  String getDay(final day) {
    DateTime time = DateTime.fromMillisecondsSinceEpoch(day * 1000);
    final x = DateFormat('EEE').format(time);
    return x;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: CustomColors.dividerLine.withAlpha(150),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(bottom: 10),
            child: const Text(
              "Next Days",
              style:
                  TextStyle(color: CustomColors.textColorBlack, fontSize: 17),
            ),
          ),
          dailyList(),
        ],
      ),
    );
  }

  Widget dailyList() {
    return SizedBox(
      height: 300,
      child: ListView.builder(
          itemCount: weatherDataDaily.daily.length > 7
              ? 7
              : weatherDataDaily.daily.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                    height: 60,
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: 80,
                          child: Text(
                            getDay(weatherDataDaily.daily[index].dt),
                            style: const TextStyle(
                                color: CustomColors.textColorBlack,
                                fontSize: 14),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                          height: 30,
                          child: Image.asset(
                              "assets/weather/${weatherDataDaily.daily[index].weather![0].icon}.png"),
                        ),
                        Text(
                            "${(weatherDataDaily.daily[index].temp!.max! - 273.15).toInt()}°/${(weatherDataDaily.daily[index].temp!.min! - 273.15).toInt()}"),
                      ],
                    )),
                Container(
                  height: 1,
                  color: CustomColors.dividerLine,
                )
              ],
            );
          }),
    );
  }
}
