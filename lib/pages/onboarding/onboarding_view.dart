import 'package:animated_onboarding/pages/onboarding/intropage_one.dart';
import 'package:animated_onboarding/pages/onboarding/intropage_three.dart';
import 'package:animated_onboarding/pages/onboarding/intropage_two.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewsState();
}

class _OnBoardingViewsState extends State<OnBoardingView> {
  PageController pageController = PageController();
  bool lastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            onPageChanged: (value) {
              setState(() {});
              lastPage = value == 2;
            },
            children: const [
              IntroPageOne(),
              IntroPageTwo(),
              IntroPageThree(),
            ],
          ),
          dotIndicator()
        ],
      ),
    );
  }

  Container dotIndicator() {
    return Container(
      alignment: const Alignment(0, 0.75),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () => pageController.jumpToPage(2),
            child: Text(
              "skip",
              style: TextStyle(
                  color: Colors.deepPurple.shade100,
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
            ),
          ),
          SmoothPageIndicator(
            controller: pageController,
            count: 3,
            effect: ExpandingDotsEffect(
                dotColor: Colors.deepPurple.shade100,
                activeDotColor: Colors.deepPurple),
          ),
          lastPage
              ? GestureDetector(
                  onTap: () {},
                  child: Text(
                    "done",
                    style: TextStyle(
                        color: Colors.deepPurple.shade100,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                )
              : GestureDetector(
                  onTap: () => pageController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeIn),
                  child: Text(
                    "next",
                    style: TextStyle(
                        color: Colors.deepPurple.shade100,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                )
        ],
      ),
    );
  }
}
