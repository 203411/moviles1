import 'package:actividad1/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:actividad1/api/apiAuth.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  String password = '';
  String password2 = '';
  final ApiAuth _apiAuth = ApiAuth();
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        // resizeToAvoidBottomInset: false,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.pink),
          backgroundColor: Colors.deepPurple,
          title: Row(
            children: const [
              SizedBox(width: 10),
              Text('Recuperar contraseña'),
              Spacer(),
              Align(
                alignment: Alignment.centerRight,
                child: Image(
                  image: AssetImage('assets/images/avatar1.png'),
                  height: 30,
                ),
              ),
            ],
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: LayoutBuilder(builder:
                (BuildContext context, BoxConstraints viewportConstraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxHeight: viewportConstraints.maxHeight,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(20, 20, 20, 60),
                            child: const Center(
                              child: Text(
                                'Por su seguridad, tu contraseña debe tener una longitud de entre 8 y 15 caracteres, usar mayúsculas, minúsculas, contener por lo menos un número y un carácter especial.',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 129, 129, 129)),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.fromLTRB(20, 5, 20, 20),
                            child: Column(children: [
                              Row(
                                children: const [
                                  Text(
                                    'Nueva contraseña',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                child: TextField(
                                  textAlign: TextAlign.left,
                                  obscureText: true,
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        borderSide: BorderSide(
                                            color: Color.fromARGB(
                                                255, 178, 177, 177),
                                            width: 1)),
                                    filled: true,
                                    hintText: 'Nueva contraseña',
                                    fillColor: Colors.white,
                                  ),
                                  onChanged: (text) async {
                                    password = text;
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(5, 25, 0, 0),
                                child: Row(
                                  children: const [
                                    Text(
                                      'Confirmar contraseña',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                  child: TextField(
                                    textAlign: TextAlign.left,
                                    style: const TextStyle(fontSize: 15),
                                    autofocus: true,
                                    decoration: const InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Color.fromARGB(
                                                  255, 129, 129, 129),
                                              width: 1)),
                                      hintText: 'Confirmar contraseña',
                                    ),
                                    onChanged: (text) async {
                                      password2 = text;
                                    },
                                  )),
                            ]),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: SizedBox(
                              width: size.width - 70,
                              height: 50,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                ),
                                onPressed: () async {
                                  if(password == password2){
                                    SharedPreferences prefs =
                                        await SharedPreferences.getInstance();
                                    // String token = prefs.getString('token')!;
                                    // int id = prefs.getInt('id')!;
                                    String respuesta = await _apiAuth
                                        .changePassword(password,password2);
                                    await showDialog(context: context, builder: (BuildContext context){
                                      return AlertDialog(
                                        title: const Text('Información'),
                                        content: Text(respuesta),
                                        actions: [
                                          TextButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: const Text('Aceptar'),
                                          ),
                                        ],
                                      );

                                    });
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const Login()),
                                    );
                                  }
                                  else{
                                   showDialog(context: context, 
                                   builder: (BuildContext context) {
                                     return const AlertDialog(
                                      title: Text("Información"),
                                      content: Text("Las contraseñas no coinciden"),
                                     );
                                   });
                                  }
                                },
                                child: const Text(
                                  'Actualizar contraseña',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
        ));
  }
}
