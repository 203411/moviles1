import 'package:flutter/material.dart';

class Act01 extends StatelessWidget {
  const Act01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: const [
            Text("A"), 
            Text("B"),
            Text("C"),
          ],
        ),
      ),
    );
  }
}
