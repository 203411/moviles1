import 'package:flutter/material.dart';

class View03 extends StatelessWidget {
  const View03({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:[
          Padding(
            padding: const EdgeInsets.only(),
            child: Row(
              children: const [
                Text(
                  "Izquierda",
                  style: TextStyle(fontSize: 30),
                ),
                Text(
                  "Derecha",
                  style: TextStyle(fontSize: 30),
                ),
              ],
            )
          ),
          Column(
            children: const [
              Text(
                "Hola",
                style: TextStyle(fontSize: 30),
              ),
              Text(
                "Hola",
                style: TextStyle(fontSize: 30),
              ),
              Text(
                 "Hola",
                style: TextStyle(fontSize: 30),
              ),
              Text(
                 "Hola",
                style: TextStyle(fontSize: 30),
              )
            ],
          )
        ],
      )
    );
  }
}