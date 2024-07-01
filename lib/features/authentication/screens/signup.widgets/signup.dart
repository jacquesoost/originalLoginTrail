import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_trail1/common/widgets/login_signup/form_divider.dart';
import 'package:login_trail1/common/widgets/login_signup/social_buttons.dart';
import 'package:login_trail1/features/authentication/screens/signup.widgets/signup_form.dart';
import 'package:login_trail1/utils/constants/sizes.dart';
import 'package:login_trail1/utils/constants/text_strings.dart';
import 'package:login_trail1/utils/helpers/helper_functions.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6,
          child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Title
                Text(TTexts.signupTitle, style: Theme.of(context).textTheme.headlineMedium),
                const SizedBox(height: TSizes.spaceBtwSections),
        
                //Form
                const TSignupForm(),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  //Divider
                  TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
                  const SizedBox(height: TSizes.spaceBtwSections),
        
        
                  //Social Buttons
                  const TSocialButtons(),
        
              ],
              ),
           ),
        ),
      ),
      )
    );
  }
}

