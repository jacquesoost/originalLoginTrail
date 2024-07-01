import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_trail1/features/authentication/screens/login/login.dart';
import 'package:login_trail1/utils/constants/image_strings.dart';
import 'package:login_trail1/utils/constants/sizes.dart';
import 'package:login_trail1/utils/constants/text_strings.dart';
import 'package:login_trail1/utils/helpers/helper_functions.dart';

class SuccessScreen
 extends StatelessWidget {
  const SuccessScreen
  ({super.key, required this.image, required this.title, required this.subTitle, required this.onPressed});

  final String image, title, subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
           appBar: AppBar(
            automaticallyImplyLeading: false,
            actions: [
              IconButton(
                onPressed: () => Get.offAll(() => const LoginScreen()),
                icon: const Icon(CupertinoIcons.clear),
              ),
            ],
          ),

          body: Center(child: SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.6,
            child: Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                ///Image
                Image(
                  height:120,
                image: AssetImage(dark ? TImages.lightAppLogo : TImages.lightAppLogo),
                width: THelperFunctions.screenWidth()* 0.6,),
                const SizedBox(height: TSizes.spaceBtwSections),
                
                //Title & SubTitle
                Text(title, style: Theme.of(context). textTheme.headlineMedium, textAlign: TextAlign.center),
                const SizedBox(height: TSizes.spaceBtwItems),
                Text(subTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center),
                const SizedBox(height: TSizes.spaceBtwSections),
                //Title & Subtitle
        
                //Buttons
                 SizedBox(width: double.infinity, child: ElevatedButton(onPressed: onPressed, child: const Text(TTexts.tContinue))),
                const SizedBox(height: TSizes.spaceBtwItems),
          ]
          )
          )
              
            ),
            
          )   
           )
    );
      
      
    
  }
}