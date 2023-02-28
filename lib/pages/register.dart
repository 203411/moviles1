import 'package:actividad1/api/apiAuth.dart';
import 'package:flutter/material.dart';

import 'package:actividad1/pages/login.dart';

class Register extends StatefulWidget {
  Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _isObscure = true;
  bool _check = false;
  final ApiAuth apiAuth = ApiAuth();
  String email = '';
  String password = '';
  String name = '';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.pink),
        backgroundColor: Colors.deepPurple,
        title: Row(
          children: const [
            SizedBox(width: 10),
            Text('Regístrate'),
            Spacer(),
            Align(
              alignment: Alignment.centerRight,
              child: Image(
                image: AssetImage('assets/images/avatar1.png'),
                height: 35,
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(right: 10, left: 8),
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints viewportConstrains) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: viewportConstrains.maxHeight,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
                            child: const Text(
                              'Crea una cuenta para empezar a usar la app',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 0),
                            margin: const EdgeInsets.only(right: 250),
                            child: const Text(
                              'Nombre',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 20, left: 20),
                            child: TextField(
                              textAlign: TextAlign.left,
                              style: const TextStyle(fontSize: 15),
                              autofocus: true,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    borderSide: BorderSide(
                                        color: Colors.black, width: 1)),
                                hintText: 'Nombre completo',
                              ),
                              onChanged: (value) {
                                name = value;
                              },
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 0),
                            margin: const EdgeInsets.only(right: 190),
                            child: const Text(
                              'Correo electrónico',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 20, left: 20),
                            child: TextField(
                              textAlign: TextAlign.left,
                              style: const TextStyle(fontSize: 15),
                              autofocus: true,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    borderSide: BorderSide(
                                        color: Colors.black, width: 1)),
                                hintText: 'Dirección de correo',
                              ),
                              onChanged: (value) {
                                email = value;
                              },
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 0),
                            margin: const EdgeInsets.only(right: 250, left: 20),
                            child: const Text(
                              'Contraseña',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 20, left: 20),
                            child: TextField(
                              obscureText: _isObscure,
                              textAlign: TextAlign.left,
                              style: const TextStyle(fontSize: 15),
                              autofocus: true,
                              decoration: InputDecoration(
                                suffixIcon: IconButton(
                                  icon: Icon(_isObscure
                                      ? Icons.visibility
                                      : Icons.visibility_off),
                                  onPressed: () {
                                    setState(() {
                                      _isObscure = !_isObscure;
                                    });
                                  },
                                ),
                                border: const OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    borderSide: BorderSide(
                                        color: Colors.black, width: 1)),
                                hintText: 'Contraseña',
                              ),
                              onChanged: (value) {
                                password = value;
                              },
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 30, top: 15),
                            margin: const EdgeInsets.only(right: 8),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              'La contraseña tiene que tener caracteres numéricos y símbolos con un mínimo de 6 caracteres',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(190, 163, 163, 163)),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 30, left: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Checkbox(
                                  value: _check,
                                  onChanged: (check) {
                                    setState(() {
                                      _check = check!;
                                    });
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                ),
                                SizedBox(
                                  height: 35,
                                  child: RichText(
                                    maxLines: 2,
                                    text: const TextSpan(
                                      children: [
                                        TextSpan(
                                            text: "Al registrarme, acepto ",
                                            style:
                                                TextStyle(color: Colors.black)),
                                        TextSpan(
                                            text: "los términos y condiciones ",
                                            style: TextStyle(
                                                color: Colors.pinkAccent)),
                                        TextSpan(
                                            text: "\ny la ",
                                            style:
                                                TextStyle(color: Colors.black)),
                                        TextSpan(
                                            text: "política de privacidad",
                                            style: TextStyle(
                                                color: Colors.pinkAccent)),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(top: 60),
                            child: SizedBox(
                              width: size.width - 70,
                              height: 50,
                              child: ElevatedButton(
                                  onPressed: () async {
                                    if (_check) {
                                      String result = await apiAuth.register(
                                          name, email, password);

                                      // ignore: use_build_context_synchronously
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Login()));
                                      await showDialog(
                                        context: context,
                                        builder: (context) => AlertDialog(
                                          title: const Text('Registro'),
                                          content: Text(result),
                                          actions: [
                                            TextButton(
                                              child: const Text('Aceptar'),
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                            ),
                                          ],
                                        ),
                                      );
                                    } else {
                                      showDialog(
                                        context: context,
                                        builder: (context) => AlertDialog(
                                          title: const Text('Error'),
                                          content: const Text(
                                              'Acepte los términos y condiciones'),
                                          actions: [
                                            TextButton(
                                              child: const Text('Aceptar'),
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                            ),
                                          ],
                                        ),
                                      );
                                    }
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.green,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(25))),
                                  child: const Text(
                                    'Crear Cuenta',
                                    style: TextStyle(fontSize: 18),
                                  )),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                '¿Ya tienes cuenta?',
                                style: TextStyle(fontSize: 16),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, 'login');
                                },
                                child: const Text(
                                  'Iniciar sesión',
                                  style: TextStyle(
                                      color: Colors.pinkAccent, fontSize: 16),
                                ),
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
