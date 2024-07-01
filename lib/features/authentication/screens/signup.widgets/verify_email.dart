import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_trail1/common/widgets/login_signup/success_screen/success_screen.dart';
import 'package:login_trail1/features/authentication/screens/login/login.dart';
import 'package:login_trail1/utils/constants/image_strings.dart';
import 'package:login_trail1/utils/constants/sizes.dart';
import 'package:login_trail1/utils/constants/text_strings.dart';
import 'package:login_trail1/utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

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
            //child: Padding(
              //padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [            
                  Image(
          //height: 120,
          image: AssetImage(dark ? TImages.lightAppLogo : TImages.lightAppLogo),
          ),
          const SizedBox(height: TSizes.spaceBtwItems),
                      //Title & SubTitle
                      Text(
                        TTexts.confirmEmail,
                        style: Theme.of(context).textTheme.headlineMedium,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: TSizes.spaceBtwItems),

                      
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'jack@gmail.com',
                                style: Theme.of(context).textTheme.labelLarge,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          Row(
                        mainAxisAlignment: MainAxisAlignment.center,
              children: [
            
                Checkbox(value: true, onChanged: (value){}),
                const Text(TTexts.verifyEmail),
               ],
            ),
                        ],
                      ),
                      const SizedBox(height: TSizes.spaceBtwItems),
                      Text(
                        TTexts.confirmEmailSubTitle,
                        style: Theme.of(context).textTheme.labelMedium,
                        textAlign: TextAlign.center,
                      ),
                      
                      const SizedBox(height: TSizes.spaceBtwSections),
        
                      //Buttons
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () => Get.to(() => SuccessScreen(
                            image: dark ? TImages.lightAppLogo : TImages.lightAppLogo,
                            title: TTexts.yourAccountCreatedTitle,
                            subTitle: TTexts.yourAccountCreatedSubTitle,
                            onPressed: () => Get.to(() => const LoginScreen()),
                          )),
                          child: const Text(TTexts.tContinue),
                        ),
                      ),
                      const SizedBox(height: TSizes.spaceBtwItems),
                      SizedBox(
                        width: double.infinity,
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(TTexts.resendEmail),
                        ),
                      ),
                ]
                  ),
    ),
          ),
          ),
          
          );
            
  }
}