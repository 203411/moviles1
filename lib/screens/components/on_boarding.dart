import 'package:flutter/material.dart';


class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int currentePage = 0;
  List<Map<String, String>> listBoarding = [
    {
      "text": "Welcome to Tokoto, Let's shop!",
      "image": "assets/images/onboarding_1.png"
    },
    {
      "text": "We help people connect with store \ around United State of America",
      "image": "assets/images/onboarding_2.png"
    },
    {
      "text": "We show the easy way to shop. \ Just stay at home with us",
      "image": "assets/images/onboarding_3.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(children: const [
        Expanded(
          flex: 2,
          child: Text(
            "Flex 2",
            style: TextStyle(
              fontSize: 30.0,
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            "Flex 2",
            style: TextStyle(
              fontSize: 30.0,
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Center(
            child: OutlinedButton(
              onPressed: null,
              child: Text('Button'),
            ),
          ),
        ),
      ]),
    );
  }
}