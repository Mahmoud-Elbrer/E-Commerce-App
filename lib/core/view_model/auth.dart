import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthViewModel extends GetxController {

  final GoogleSignIn _googleSignIn =   GoogleSignIn(scopes: ['email']) ;
  final FirebaseAuth  _auth = FirebaseAuth.instance ;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
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
   final GoogleSignInAccount? googleUser  =  await _googleSignIn.signIn();
   // now well sign in firebase
    GoogleSignInAuthentication googleSignInAuthentication =  await googleUser!.authentication  ;
    final authCredential =  GoogleAuthProvider.credential(
      accessToken:  googleSignInAuthentication.accessToken,
      idToken:  googleSignInAuthentication.idToken,
    ) ;

   UserCredential userCredential =  await _auth.signInWithCredential(authCredential);
   print(userCredential);
  }
}