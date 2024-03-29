import 'package:actividad1/pages/login.dart';
import 'package:actividad1/pages/register.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        width: size.width,
        height: size.height,
        decoration: const BoxDecoration(color: Color(0xffffffff)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 25),
              Container(
                padding: const EdgeInsets.only(top: 150),
                width: 250,
                child: Image.asset('assets/images/splash2.png'),
              ),
              Container(
                margin: const EdgeInsets.only(top: 50),
                child: ElevatedButton(
                  onPressed: () => {},
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(300, 48), backgroundColor: const Color(0xff3169f5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0))),
                  child: Row(
                    children: const [
                      Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                      FaIcon(FontAwesomeIcons.google),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                      Text(
                        'Continuar con Google',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: ElevatedButton(
                  onPressed: () => {},
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(300, 48), backgroundColor: const Color(0xff324fa5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0))),
                  child: Row(
                    children: const [
                      Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                      FaIcon(
                        FontAwesomeIcons.facebookSquare,
                        size: 30,
                      ),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                      Text(
                        'Continuar con Facebook',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: ElevatedButton(
                  onPressed: () => {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Register()))  
                  },
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(
                      width: 1,
                      color: Color(0xff64686f),
                    ), backgroundColor: const Color(0xffffffff),
                    minimumSize: const Size(300, 48),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                  child: Row(
                    children: const [
                      Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                      Icon(
                        Icons.mail_rounded,
                        color: Color(0xff64686f),
                      ),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                      Text(
                        'Registrarse con e-mail',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff64686f)),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 90),
                width: 300,
                child: Column(
                  children: [
                    SizedBox(
                      height: 35,
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Entrar como invitado',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xfffc1460)),
                          )),
                    ),
                    SizedBox(
                      height: 35,
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Entrar como vendedor',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff76a757)),
                          )),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30), //Definir tamaño y padding con space between
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      '¿Ya tienes cuenta?',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Login()));
                        },
                        child: const Text(
                          'Iniciar sesión',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xfffc1460)),
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}