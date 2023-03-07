import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:actividad1/screens/home_screen_google.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';


final FirebaseAuth _auth = FirebaseAuth.instance;
final GoogleSignIn _googleSignIn = GoogleSignIn();


Future<void> signup(BuildContext context) async {
	final GoogleSignIn googleSignIn = GoogleSignIn();
	final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
	if (googleSignInAccount != null) {

	final GoogleSignInAuthentication googleSignInAuthentication =
		await googleSignInAccount.authentication;

	final AuthCredential authCredential = GoogleAuthProvider.credential(
		idToken: googleSignInAuthentication.idToken,
		accessToken: googleSignInAuthentication.accessToken);
	
	// Getting users credential
	UserCredential result = await _auth.signInWithCredential(authCredential);
	User? user = result.user;
	
	if (result != null) {
		Navigator.pushReplacement(
			context, MaterialPageRoute(builder: (context) => HomeScreenGoogle()));
	} // if result not null we simply call the MaterialpageRoute,
		// for go to the HomePage screen
	}
}
Future<void> signOutFromGoogle() async{
  await _googleSignIn.signOut();
  await _auth.signOut();
}

Future<UserCredential> signInWithFacebook() async {
  // Trigger the sign-in flow
  final LoginResult loginResult = await FacebookAuth.instance.login();

  // Create a credential from the access token
  final OAuthCredential facebookAuthCredential = FacebookAuthProvider.credential(loginResult.accessToken!.token);

  // Once signed in, return the UserCredential
  return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
}