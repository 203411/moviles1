import 'package:flutter/material.dart';

class GraficaBoarding extends StatelessWidget {
  const GraficaBoarding({
    Key? key,
    required this.text,
    required this.text1,
    required this.image,
  }) : super(key: key);

  final String text, text1, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Text(
            text,
            style: const TextStyle(
              color: Color.fromARGB(255, 83, 37, 162),
              fontSize: 25,
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto',
            ),
          ),
          Image.asset(
            image,
            width: 300,
            height: 300,
          ),
        ]),
        Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Text(
              text1,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 40,
                fontFamily: 'Roboto',
              ),
            ))
      ],
    );
  }
}
