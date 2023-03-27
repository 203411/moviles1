import 'package:actividad1/datos/components/on_boarding.dart';
import 'package:actividad1/pages/profile.dart';
import 'package:actividad1/splash/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:actividad1/datos/components/content_boarding.dart';
import 'package:actividad1/graficas/components/grafica_on_boarding.dart';
import 'package:actividad1/graficas/components/grafica_boarding.dart';

class Menu extends StatefulWidget {
  const Menu( {Key? key}) : super(key: key);
  
  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int currentPage = 0;
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const _pages = <Widget>[
    Graficas(),
    OnBoarding(),
    Profile(),
  ];
  static const _titlesPages = <String>[
    'Graficas',
    'Estado',
    'Perfil',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        // backgroundColor: Colors.deepPurple,
        backgroundColor: Color(0xffFF3941),
        title: Row(
          children: const [
            SizedBox(width: 10),
            Text('Vitality MOD'),
            Spacer(),
            Align(
              alignment: Alignment.centerRight,
              child: Image(
                image: AssetImage('assets/images/splash2.png'),
                height: 30,
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Graficas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Estado',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Perfil',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xffFF3941),
        onTap: _onItemTapped,
      ),
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
    if (currentPage < 4) {
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
