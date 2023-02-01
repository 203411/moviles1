import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ContentBoarding extends StatelessWidget {
  const ContentBoarding({super.key, this.text, this.image});
  final String? text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text(
            text!,
            style: const TextStyle(fontSize: 30),
          ),
        ),
        Image.asset(
          image!,
          width: 100,
        )
      ],
    );
  }
}
