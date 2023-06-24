import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPageTwo extends StatelessWidget {
  const IntroPageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Unleash the Joy of Online Shopping",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 10,
          ),
          Lottie.network(
              "https://assets3.lottiefiles.com/packages/lf20_lmpTluwhpf.json"),
        ],
      ),
    );
  }
}
