import 'package:flutter/material.dart';
import 'package:login_trail1/features/authentication/screens/login/widgets/firebase_options.dart';
//import 'firebase_options.dart';
//import 'package:get/get.dart';
import 'app.dart';
//import 'package:firebase_dart/firebase_dart.dart';
import 'package:firebase_core/firebase_core.dart' as core_firebase;



/// ------ Entry point of Flutter App -----
Future<void> main() async {

  // Todo: Add Widgets Binding
  // Todo: Init Local Storage
  // Todo: Await Native Splash
  // Todo: Initialize Firebase
  await core_firebase.Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // Todo: Initialize Authentication

  runApp(const App());
}


