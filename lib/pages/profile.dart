import 'package:actividad1/api/apiAuth.dart';
import 'package:flutter/material.dart';


class Profile extends StatefulWidget {
  const Profile( {Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool _isObscure = true;
  bool _check = false;
  final ApiAuth apiAuth = ApiAuth();
  String email = '';
  String password = '';
  String edad = '';
  String sexo = '';
  String estatura = '';
  String peso = '';
  String fechaNacimiento = '';
  String domicilio = '';
  String nombre = '';
  String telefonoPersonal = '';
  String telefonoEmergencia = '';
  String institucion = '';
  String seguroSocial = '';
  String medicoTratante = '';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      
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
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 0),
                            margin: const EdgeInsets.only(left: 20),
                            child: const Text(
                              'Nombre',
                              textAlign: TextAlign.left,
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
                                nombre = value;
                              },
                            ),
                          ),
                         
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 0),
                            margin: const EdgeInsets.only(left: 20),
                            child: const Text(
                              'Edad',
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
                                hintText: 'Edad',
                              ),
                              onChanged: (value) {
                                edad = value;
                              },
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 0),
                            margin: const EdgeInsets.only(left: 20),
                            child: const Text(
                              'Sexo',
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
                                hintText: 'Sexo',
                              ),
                              onChanged: (value) {
                                sexo = value;
                              },
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 0),
                            margin: const EdgeInsets.only(left: 20),
                            child: const Text(
                              'Fecha de nacimiento',
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
                                hintText: 'Fecha de nacimiento',
                              ),
                              onChanged: (value) {
                                fechaNacimiento = value;
                              },
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 0),
                            margin: const EdgeInsets.only(left: 20),
                            child: const Text(
                              'Estatura',
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
                                hintText: 'Estatura',
                              ),
                              onChanged: (value) {
                                estatura = value;
                              },
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 0),
                            margin: const EdgeInsets.only(left: 20),
                            child: const Text(
                              'Peso',
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
                                hintText: 'Peso',
                              ),
                              onChanged: (value) {
                                peso = value;
                              },
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 0),
                            margin: const EdgeInsets.only(left: 20),
                            child: const Text(
                              'Institucion',
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
                                hintText: 'Institucion',
                              ),
                              onChanged: (value) {
                                institucion = value;
                              },
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 0),
                            margin: const EdgeInsets.only(left: 20),
                            child: const Text(
                              'Seguro Social',
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
                                hintText: 'Seguro Social',
                              ),
                              onChanged: (value) {
                                seguroSocial = value;
                              },
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 0),
                            margin: const EdgeInsets.only(left: 20),
                            child: const Text(
                              'Medico Tratante',
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
                                hintText: 'Medico Tratante',
                              ),
                              onChanged: (value) {
                                medicoTratante = value;
                              },
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 0),
                            margin: const EdgeInsets.only(left: 20),
                            child: const Text(
                              'Domicilio',
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
                                hintText: 'Domicilio',
                              ),
                              onChanged: (value) {
                                domicilio = value;
                              },
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 0),
                            margin: const EdgeInsets.only(left: 20),
                            child: const Text(
                              'Telefono Personal',
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
                                hintText: 'Telefono',
                              ),
                              onChanged: (value) {
                                telefonoPersonal = value;
                              },
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 0),
                            margin: const EdgeInsets.only(left: 20),
                            child: const Text(
                              'Telefono de Emergencia',
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
                                hintText: 'Telefono',
                              ),
                              onChanged: (value) {
                                telefonoEmergencia = value;
                              },
                            ),
                          ),
                           Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 0),
                            margin: const EdgeInsets.only(left: 20),
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
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 0),
                            margin: const EdgeInsets.only(left: 20),
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
                          
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 40),
                            child: SizedBox(
                              width: size.width - 70,
                              height: 50,
                              child: ElevatedButton(
                                  onPressed: () async {
                                    
                                      // String result = await apiAuth.Profile(
                                      // nombre, email, password);
                                      String result = await apiAuth.profile(
                                          nombre,
                                          email,
                                          password,
                                          edad,
                                          sexo,
                                          estatura,
                                          peso,
                                          fechaNacimiento,
                                          domicilio,
                                          telefonoPersonal,
                                          telefonoEmergencia,
                                          institucion,
                                          seguroSocial,
                                          medicoTratante, 1);
                                      await showDialog(
                                        context: context,
                                        builder: (context) => AlertDialog(
                                          title: const Text('Datos actualizados'),
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
                                    
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xffFF3941),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(25))),
                                  child: const Text(
                                    'Guardar',
                                    style: TextStyle(fontSize: 18),
                                  )),
                            ),
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
