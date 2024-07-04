import 'package:firebase_auth/firebase_auth.dart';

class FirebaseLoginService {
  static Future<void> login(String email, String password) async {
    try {
      final userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Login successful (handle user data if needed)
      final user = userCredential.user;
      print('Logged in user: ${user!.email}');
    } on FirebaseAuthException catch (e) {
      // Handle login errors (similar to your mock backend)
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }
}
