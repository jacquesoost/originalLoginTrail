import 'package:flutter/material.dart';
import 'package:login_trail1/utils/constants/colors.dart';
import 'package:login_trail1/utils/constants/image_strings.dart';
import 'package:login_trail1/utils/constants/sizes.dart';

class TSocialButtons extends StatelessWidget {
  const TSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(border: Border.all(color: TColors.grey), borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: TSizes.icanMd,
              height: TSizes.icanMd,
              image: AssetImage(TImages.google)),
    
          ),
        ),
        //const SizedBox(width: TSizes.spaceBtwItems),
        //Container(
          //decoration: BoxDecoration(border: Border.all(color: TColors.grey), borderRadius: BorderRadius.circular(100)),
          //child: IconButton(
            //onPressed: () {},
            //icon: const Image(
              //width: TSizes.icanMd,
              //height: TSizes.icanMd,
              //image: AssetImage(TImages.facebook)),
    
          //),
        //),
      ],
    );
  }
}
