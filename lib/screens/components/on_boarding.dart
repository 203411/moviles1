import 'package:actividad1/screens/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:actividad1/screens/components/content_boarding.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int pages = 0;
  List<Map<String, String>> onBoardingDatas = [
    {
      "text": "ESPARCIMIENTO",
      "text1": "Brindamos todos los servicios para consentir a tu mascota",
      "image": "assets/images/B1.png"
    },
    {
      "text": "ADOPTCIÓN",
      "text1":
          "Nulla faucibus tellus ut odio scelerisque vitae molestie lectus feugiat.",
      "image": "assets/images/B2.png"
    },
    {
      "text": "HOSPITALIDAD",
      "text1":
          "Nulla faucibus tellus ut odio scelerisque vitae molestie lectus feugiat.",
      "image": "assets/images/B3.png"
    },
    {
      "text": "VETERINARIA",
      "text1":
          "Nulla faucibus tellus ut odio scelerisque vitae molestie lectus feugiat.",
      "image": "assets/images/B4.png"
    },
    {
      "text": "TIENDA",
      "text1": "Compra todas las necesidades de tu mascota sin salir de casa.",
      "image": "assets/images/B5.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          flex: 4,
          child: PageView.builder(
            onPageChanged: (value) {
              setState(() {
                pages = value;
              });
            },
            itemCount: onBoardingDatas.length,
            itemBuilder: (context, index) => ContentBoarding(
              text: onBoardingDatas[pages]["text"]!,
              text1: onBoardingDatas[pages]["text1"]!,
              image: onBoardingDatas[pages]["image"]!,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < onBoardingDatas.length; i++)
              if (i == pages)
                Container(
                  margin: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: 30,
                  height: 7,
                )
              else
                Container(
                  margin: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 199, 199, 199),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: 20,
                  height: 5,
                )
          ],
        ),
        Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [buttomBoarding(50, 330, "Botton")],
            )),
      ],
    ));
  }

  buttomBoarding(double height, double width, String test) {
    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40.0),
            side: BorderSide(
                color: pages == 4
                    ? Colors.green
                    : Color.fromARGB(255, 197, 196, 196),
                width: 2)),
        minimumSize: Size(width, height),
        backgroundColor: pages == 4 ? Colors.green : Colors.white,
        padding: const EdgeInsets.all(0));
    return Padding(
      padding: const EdgeInsets.only(top: 50, bottom: 50),
      child: TextButton(
        onPressed: pages < 4
            ? cambiarVista
            : () {
                Route route =
                    MaterialPageRoute(builder: (bc) => const SplashView());
                Navigator.of(context).push(route);
              },
        style: flatButtonStyle,
        child: Text(pages == 4 ? "Continuar" : "Siguiente",
            style: TextStyle(
                fontSize: 20,
                color: pages == 4 ? Colors.white : Colors.grey,
                fontWeight: FontWeight.bold)),
      ),
    );
  }

  void cambiarVista() {
    if (pages < 4) {
      setState(() {
        pages++;
      });
    }
  }
}
