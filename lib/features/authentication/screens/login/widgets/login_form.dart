// ignore_for_file: unused_local_variable

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:login_trail1/features/authentication/screens/login/login.dart';
//import 'package:login_trail1/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:login_trail1/features/authentication/screens/signup.widgets/signup.dart';
import 'package:login_trail1/utils/constants/sizes.dart';
import 'package:login_trail1/utils/constants/text_strings.dart';
import 'package:login_trail1/utils/helpers/helper_functions.dart';
// Import the new Firebase login service
import 'package:login_trail1/features/authentication/screens/login/widgets/firebase_login_service.dart';
import '../../password_configuration/forget_password.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
     //ignore: unused_local_variable;
     final dark = THelperFunctions.isDarkMode(context);
     //added final on next 2 lines for testing
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    


Future<void> login() async {
  final email = emailController.text;
  final password = passwordController.text;

  try {
    await FirebaseLoginService.login(email, password);

    // Login successful (handle user data if needed)
    final user = FirebaseAuth.instance.currentUser;
    print('Logged in user: ${user!.email}');

    // Navigate to next screen upon successful login
    // (Replace with desired navigation logic)
    Get.to(() => const LoginScreen()); // Adjust screen name

  } on FirebaseAuthException catch (e) {
    // Handle login errors (similar to your mock backend)
    Get.snackbar(
      'Login Failed',
      'Invalid email or password. Please try again.', // Used the error message from FirebaseAuthException
      backgroundColor: Colors.red,
      colorText: Colors.white,

    
        );
      }
    }
    return Form(child: Padding(
      padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
      child: Column(
        children: [
          //Email
          TextFormField(
            controller: emailController,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.email),
              labelText: TTexts.email, 
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),
      
          //Password
          TextFormField(
            controller: passwordController,
            obscureText: true,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.lock),
              labelText: TTexts.password,
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields / 2),
      
          //Remember me & Forget Password
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
          
            //Remember me
            Row(
              children: [
            
                Checkbox(value: true, onChanged: (value){}),
                const Text(TTexts.rememberMe),
               ],
            ),
            //Forget Password
            //SizedBox(
            //width: MediaQuery.of(context).size.width * 0.6, // Set width to 60% of screen width
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
            
              children: [
              TextButton(onPressed: () => Get.to(() => const ForgetPassword()), 
            
                child: const Text(TTexts.forgetPassword),
            
            ),
        ]
            )
             
           ],
          ),
          const SizedBox(height: TSizes.spaceBtwSections),
      
  
          //Sign In Button
          SizedBox(width: double.infinity, child: ElevatedButton(onPressed: login, child: const Text(TTexts.signIn),
          ),
          ),
          const SizedBox(height: TSizes.spaceBtwItems),
    
          //Create Account Button
          SizedBox(width: double.infinity, child: OutlinedButton(onPressed: () => Get.to(() => const SignupScreen()), child: const Text(TTexts.createAccount),

          //Sign In Button
              //SizedBox(width: MediaQuery.of(context).size.width * 0.5, child: ElevatedButton(onPressed: (){}, child: const Text(TTexts.signIn))),
              //const SizedBox(height: TSizes.spaceBtwItems),
        
              //Create Account Button
              //SizedBox(width: MediaQuery.of(context).size.width * 0.5, child: OutlinedButton(onPressed: () => Get.to(() => const SignupScreen()), child: const Text(TTexts.createAccount))),
          
      ),
    ),  
   
        ]
    ),
       
    ),
    );
    
      
      
    
  }
}