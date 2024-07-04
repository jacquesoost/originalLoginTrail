//import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = 'http://localhost:3000';
  
  

  static Future<bool> login(String email, String password) async {
  try {
    final response = await http.post(
      Uri.parse('$baseUrl/login'),
      body: jsonEncode({
        'email': email,
        'password': password,
      }),
      headers: {
        'Content-Type': 'application/json', // Add this header
      },
    );

    if (kDebugMode) {
      print(response.request);
    } // Print the request sent
    if (kDebugMode) {
      print(response.body);
    }   // Print the response body

    if (response.statusCode == 200) {
      // Successful login (assuming success for DummyJSON)
      return true;
    } else {
      print('statuscode${response.statusCode}');
      // Failed login
      return false;
    }
  } catch (e) {
    // Error occurred
    if (kDebugMode) {
      print('Error: $e');
    }
    return false;
  }
}
}
//adding commented out mock backend logic here for clean code in login_form.dart
//mock backend api_serv commented out
//import 'package:login_trail1/api/api_service.dart';
//mock backend logic commented out up to return
    //Future<void> login() async {
      //final email = emailController.text;
      //final password = passwordController.text;

      //final success = await ApiService.login(email, password);
      //if (success) { Get.to(() => const LoginScreen());
        // Navigate to next screen upon successful login
      //} else {
        // Display error message
        //Get.snackbar(
          //'Login Failed',
          //'Invalid email or password. Please try again.',
          //backgroundColor: Colors.red,
          //colorText: Colors.white,