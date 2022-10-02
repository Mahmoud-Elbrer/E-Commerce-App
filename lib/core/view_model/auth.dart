import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:flutter/material.dart';

import '../../view/home_screen.dart';

class AuthViewModel extends GetxController {
  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

  final FirebaseAuth _auth = FirebaseAuth.instance;

  final FacebookLogin _facebookAuth = FacebookLogin();

  late String email, password, name;

  Rxn<User> _user = Rxn<User>();

  String? get user => _user.value?.email;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    _user.bindStream(_auth.authStateChanges());
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  void googleSigInMethode() async {
    final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
    // now well sign in firebase
    GoogleSignInAuthentication googleSignInAuthentication =
        await googleUser!.authentication;
    final authCredential = GoogleAuthProvider.credential(
      accessToken: googleSignInAuthentication.accessToken,
      idToken: googleSignInAuthentication.idToken,
    );
    //  UserCredential userCredential =
    await _auth.signInWithCredential(authCredential);
  }

  void facebookSigInMethode() async {
    FacebookLoginResult facebookLoginResult =
        await _facebookAuth.logIn(permissions: [
      FacebookPermission.publicProfile,
      FacebookPermission.email,
    ]);

    final accessToken = facebookLoginResult.accessToken!.token;

    final facebookCredential = FacebookAuthProvider.credential(accessToken);
    await _auth.signInWithCredential(facebookCredential);
  }

  void signInWithEmailAndPassword() async {
    print("your name  : ");
    print(email);
    print(password);
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      Get.offAll(const HomeScreen());
    } catch (e) {
      Get.snackbar("Error login Account", e.toString(),
          colorText: Colors.black, snackPosition: SnackPosition.BOTTOM);
    }
  }


  void createAccountWithEmailAndPassword() async {
    try {
      print("Here");
      await _auth.createUserWithEmailAndPassword( email: "email2@gmail.com", password: "email2@gmail.com" );
      Get.offAll(const HomeScreen());
    } catch (e) {
      Get.snackbar("Error login Account", e.toString(),
          colorText: Colors.black, snackPosition: SnackPosition.BOTTOM);
    }
  }

  void signOut() async {
    await _auth.signOut();
  }
}
