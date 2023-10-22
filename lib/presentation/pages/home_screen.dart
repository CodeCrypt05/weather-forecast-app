import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_forecast_app/controller/global_controller.dart';
import 'package:weather_forecast_app/presentation/widgets/header_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobaController globaController =
      Get.put(GlobaController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Obx(
          () => globaController.checkLoadiing().isTrue
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : ListView(
                  scrollDirection: Axis.vertical,
                  children: const [
                    SizedBox(
                      height: 20,
                    ),
                    HeaderWidget(),
                  ],
                ),
        ),
      ),
    );
  }
}
