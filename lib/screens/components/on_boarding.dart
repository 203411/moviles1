import 'package:actividad1/screens/components/content_boarding.dart';
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
      "text": "Flower 1",
      "image": "assets/images/onboarding_1.png"
    },
    {
      "text":"Flower 2",
      "image": "assets/images/onboarding_2.png"
    },
    {
      "text": "Flower3",
      "image": "assets/images/onboarding_3.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          Expanded(
            flex: 1,
            child: PageView.builder(
              itemBuilder: (context, index) => ContentBoarding(
                text: listBoarding[index]["text"],
                image: listBoarding[index]["image"],
              ),
              itemCount: listBoarding.length,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20.0, bottom: 60.0),
            child: ElevatedButton(
              onPressed: null,
              child: Text('Boton'),
            ),
          ),
        ]),
      ),
    );
  }
}
