import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tripit1/colors.dart';
import 'package:tripit1/onboarding/intro_page_2.dart';
import 'package:tripit1/onboarding/intro_page_3.dart';

import '../intro_screens/Signin/signin.dart';
import 'intro_page_1.dart';

class OnBoarding extends StatefulWidget {
  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  PageController _controller = PageController();
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              onLastPage = (index == 2);
            });
          },
          children: [
            IntroPage1(),
            IntroPage2(),
            IntroPage3(),
          ],
        ),
        Container(
          alignment: Alignment(0, 0.90),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  _controller.jumpToPage(2);
                },
                child: Text('Skip'),
              ),
              SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: SwapEffect(activeDotColor: CustomColor.green1),
              ),
              onLastPage
                  ? GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignIn()),);
                      },
                      child: Text("Let's Go"),
                    )
                  : GestureDetector(
                      onTap: () {
                        _controller.nextPage(
                          duration: Duration(milliseconds: 450),
                          curve: Curves.easeIn,
                        );
                      },
                      child: Text("Next"),
                    ),
            ],
          ),
        ),
      ],
    ));
  }
}
