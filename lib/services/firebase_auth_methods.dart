import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/material.dart';
import 'package:actividad1/utils/show_snack_bar.dart';

class FirebaseAuthMethods {
  final FirebaseAuth _auth;
  FirebaseAuthMethods(this._auth);

  User get user => _auth.currentUser!;

  // STATE PERSISTENCE STREAM
  Stream<User?> get authState => FirebaseAuth.instance.authStateChanges();
  // GOOGLE SIGN IN
 Future<void> signInWithGoogle(BuildContext context) async{
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      
      final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken:  googleAuth?.idToken,
      );

      UserCredential userCredential = 
        await _auth.signInWithCredential(credential);
        
        // if(userCredential.user != null){
        //   if(userCredential.additionalUserInfo!.isNewUser){}
        // }
        
    } on FirebaseAuthException catch (e) {
      print("Falló la autenticacion con google");
    }
  }

  //Facebook Auth
  Future<void> signInWithFacebook(BuildContext context) async{
    try{
      final LoginResult loginResult = await FacebookAuth.instance.login();

      final OAuthCredential facebookAuthCredential = FacebookAuthProvider.credential(loginResult.accessToken!.token);


      await _auth.signInWithCredential(facebookAuthCredential);
        
    } on FirebaseAuthException catch(e){
      print("Falló la autenticacion con facebook");   
    }
  }
  //Sign out
  Future<void> signOut(BuildContext context) async{
    try{

      await _auth.signOut();
      
    } on FirebaseAuthException catch(e){
      print("Falló cierre de sesion");   
    }
  }
 
}