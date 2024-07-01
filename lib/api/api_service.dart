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
