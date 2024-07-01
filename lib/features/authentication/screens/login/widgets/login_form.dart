// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:login_trail1/api/api_service.dart';
import 'package:login_trail1/features/authentication/screens/login/login.dart';
//import 'package:login_trail1/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:login_trail1/features/authentication/screens/signup.widgets/signup.dart';
import 'package:login_trail1/utils/constants/sizes.dart';
import 'package:login_trail1/utils/constants/text_strings.dart';
import 'package:login_trail1/utils/helpers/helper_functions.dart';

import '../../password_configuration/forget_password.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
     //ignore: unused_local_variable;
     final dark = THelperFunctions.isDarkMode(context);
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    Future<void> login() async {
      final email = emailController.text;
      final password = passwordController.text;

      final success = await ApiService.login(email, password);
      if (success) { Get.to(() => const LoginScreen());
        // Navigate to next screen upon successful login
      } else {
        // Display error message
        Get.snackbar(
          'Login Failed',
          'Invalid email or password. Please try again.',
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