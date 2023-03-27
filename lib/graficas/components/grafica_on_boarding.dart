import 'package:flutter/material.dart';
import 'package:actividad1/graficas/components/grafica_boarding.dart';

class Graficas extends StatefulWidget {
  const Graficas({Key? key}) : super(key: key);

  @override
  State<Graficas> createState() => _GraficasState();
}

class _GraficasState extends State<Graficas> {
  int currentPage = 0;

  List<Map<String, String>> listBoarding = [
    {
      "text": "RITMO CARDIACO",
      "text1": "95lpm",
      "image": "assets/images/B1.png"
    },
    {
      "text": "SATURACIÓN DE OXÍGENO",
      "text1": "96%",
      "image": "assets/images/B2.png"
    },
    {"text": "TEMPERATURA", "text1": "34°C", "image": "assets/images/B3.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 4,
          child: PageView.builder(
            onPageChanged: (value) {
              setState(() {
                currentPage = value;
              });
            },
            itemCount: listBoarding.length,
            itemBuilder: (context, index) => GraficaBoarding(
              text: listBoarding[currentPage]["text"]!,
              text1: listBoarding[currentPage]["text1"]!,
              image: listBoarding[currentPage]["image"]!,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            listBoarding.length,
            (index) => Pages(index: index, currentPage: currentPage),
          ),
        ),
      ],
    );
  }

  buttomBoarding(double height, double width, String test) {
    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40.0),
            side: BorderSide(
                color: currentPage == 4
                    ? Colors.green
                    : Color.fromARGB(255, 197, 196, 196),
                width: 2)),
        minimumSize: Size(width, height),
        backgroundColor: currentPage == 4 ? Colors.green : Colors.white,
        padding: const EdgeInsets.all(0));
    return Padding(
      padding: const EdgeInsets.only(top: 50, bottom: 50),
      child: TextButton(
        onPressed: cambiarVista,
        style: flatButtonStyle,
        child: Text(currentPage == 4 ? "Continuar" : "Siguiente",
            style: TextStyle(
              fontSize: 20,
              color: currentPage == 4 ? Colors.white : Colors.grey,
              fontWeight: FontWeight.bold,
            )),
      ),
    );
  }

  void cambiarVista() {
    if (currentPage < 3) {
      setState(() {
        currentPage++;
      });
    }
  }
}

AnimatedContainer Pages({required int index, required int currentPage}) {
  return AnimatedContainer(
    duration: const Duration(milliseconds: 300),
    margin: const EdgeInsets.all(3),
    height: currentPage == index ? 7 : 5,
    width: currentPage == index ? 30 : 20,
    decoration: BoxDecoration(
        color: currentPage == index
            ? Colors.pinkAccent
            : Color.fromARGB(255, 199, 199, 199),
        borderRadius: BorderRadius.circular(3)),
  );
}
