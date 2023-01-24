import 'package:flutter/material.dart';

class View02 extends StatelessWidget {
  const View02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 50.0, bottom: 40),
              child: Text(
                "Hola",
                style: TextStyle(fontSize: 30),
                ),
            ),
            Column(
              children: const [
                Text(
                  "Texto 1",
                  style: TextStyle(fontSize: 25),
                ),
                Text(
                  "Texto 2",
                  style: TextStyle(fontSize: 25),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
