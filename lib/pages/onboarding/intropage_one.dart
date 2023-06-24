import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPageOne extends StatelessWidget {
  const IntroPageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(" Find What You Love!",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          Lottie.network(
              "https://assets6.lottiefiles.com/packages/lf20_FWh7bv.json"),
        ],
      ),
    );
  }
}
