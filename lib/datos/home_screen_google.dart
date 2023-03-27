import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:actividad1/services/firebase_services.dart';
import 'package:actividad1/pages/home.dart';
import 'package:actividad1/pages/login.dart';
class HomeScreenGoogle extends StatefulWidget {
  const HomeScreenGoogle({super.key});

  @override
  State<HomeScreenGoogle> createState() => _HomeScreenGoogleState();
}

class _HomeScreenGoogleState extends State<HomeScreenGoogle> {
  _logOut() async {
    Navigator.push(
      context, 
      MaterialPageRoute(
        builder: (_) => const HomePage()
      )
    );
  }
  
  User? user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(   
            appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 26, 26, 112),
            titleSpacing: 0.0,
            title: const Text('Welcome'),
            leading: IconButton(
              onPressed:() {},
              icon: IconButton(
                color: Colors.red,
                icon: const Icon(Icons.arrow_back),
                  onPressed: (){
                    signOutFromGoogle();              
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (_) => const HomePage()
                      )
                    );
                  },
              ),
            ),
            actions: [ 
              IconButton(
                icon: Image.asset('assets/images/avatar1.png'),
                onPressed: null,
              ),
            ],
          ),     
         body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
            // Text(user!.email!),
            
            Text("Welcome"),
            Text(user!.displayName!),
            CircleAvatar(
              backgroundImage: NetworkImage(user?.photoURL == null ? 'assets/images/4myPet.png' : user!.photoURL!),
              radius: 20,
            ),
            ElevatedButton(
                      onPressed: () {
                        _logOut();
                        Navigator.pop(context);
                      },
                      child: const Text('Log Out'),
                    ),
            
          ],
        )
      )
    );
  }
}
