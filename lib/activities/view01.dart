import 'package:flutter/material.dart';

class View01 extends StatelessWidget {
  const View01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            //Image.asset('assets/images/img.jpg'),
            Padding(
              padding: const EdgeInsets.only(top: 100.0, bottom: 50),
              child: Column(
                children: const [
                  Text(
                    "A",
                    style: TextStyle(fontSize: 30.5, color: Colors.blue),
                  ),
                  Text(
                    "B",
                    style: TextStyle(fontSize: 30.5, color: Colors.blue),
                  ),
                  Text(
                    "C",
                    style: TextStyle(fontSize: 30.5, color: Colors.blue),
                  ),
                  Text(
                    "D",
                    style: TextStyle(fontSize: 30.5, color: Colors.blue),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Column(
                children: const [
                  Text(
                    "Marisol",
                    style: TextStyle(fontSize: 30.5, color: Colors.blue),
                  ),
                  Text(
                    "Marisol x2",
                    style: TextStyle(fontSize: 30.5, color: Colors.blue),
                  ),
                  Text(
                    "Solis",
                    style: TextStyle(fontSize: 30.5, color: Colors.blue),
                  ),
                  Text(
                    "Lopez",
                    style: TextStyle(fontSize: 30.5, color: Colors.blue),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
