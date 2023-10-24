import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';

class LoadingAnimation extends StatelessWidget {
  const LoadingAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 200,
        width: 200,
        child: Lottie.asset(
          'animations/cloud_loading.json',
          repeat: true,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
