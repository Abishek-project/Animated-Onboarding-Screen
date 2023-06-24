import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPageThree extends StatelessWidget {
  const IntroPageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(" Explore Online Stores Worldwide",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold)),
        Lottie.network(
            "https://assets8.lottiefiles.com/packages/lf20_sj0skmmg.json"),
      ],
    ));
  }
}
