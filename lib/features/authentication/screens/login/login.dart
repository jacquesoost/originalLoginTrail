import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_trail1/common/widgets/login_signup/form_divider.dart';
import 'package:login_trail1/common/widgets/login_signup/social_buttons.dart';
import 'package:login_trail1/features/authentication/screens/login/widgets/login_form.dart';
import 'package:login_trail1/features/authentication/screens/login/widgets/login_header.dart';
import 'package:login_trail1/utils/constants/sizes.dart';
import 'package:login_trail1/utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
             appBar: AppBar(
              automaticallyImplyLeading: false,
              foregroundColor: Colors.white,
              backgroundColor: Colors.blue,
              toolbarHeight: 35,
                      
            ),
          body: Center(
            child: SingleChildScrollView(
            child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6,
            //child: Padding(
              //padding: TSpacingStyle.paddingWithAppBarHeight,
              child: Column(
                children: [
                  // Logo, Title & Sub-Title
                  const TLoginHeader(),
        
                  //Form
                  const TLoginForm(),
        
                  //Divider
                  TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
                  const SizedBox(height: TSizes.spaceBtwSections),
        
                  //Footer
                  const TSocialButtons(),
                ],
              ),
            ),
          ),
          )
          );
      //  ),
      
    //);
  }
}




