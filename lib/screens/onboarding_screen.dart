import 'package:bmi/screens/screen1.dart';
import 'package:bmi/screens/screen2.dart';
import 'package:bmi/screens/screen3.dart';
import 'package:bmi/screens/screen4.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../const.dart';

import '../input_Page.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _controller = PageController();
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 3);
              });
            },
            controller: _controller,
            children: const [
              Screen1(),
              Screen2(),
              Screen3(),
              Screen4(),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.78),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ///skip
                GestureDetector(
                  onTap: () {
                    _controller.jumpToPage(4);
                  },
                  child: const Text("Skip",style: kBodyBodyTextStyle),
                ),
                SmoothPageIndicator(controller: _controller, count: 4),

                onLastPage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const InputPage(),
                            ),
                          );
                        },
                        child: const Text("Done",style: kBodyBodyTextStyle),
                      )
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                              duration: const Duration(microseconds: 700),
                              curve: Curves.easeIn);
                        },
                        child: const Text("Next",style: kBodyBodyTextStyle),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
