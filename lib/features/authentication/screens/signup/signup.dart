import 'package:ecommerce_mark1/common/widgets/login_signup/form_divider.dart';
import 'package:ecommerce_mark1/common/widgets/login_signup/social_buttons.dart';
import 'package:ecommerce_mark1/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:ecommerce_mark1/utils/constants/sizes.dart';
import 'package:ecommerce_mark1/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/text_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: dark ? Colors.white : Colors.black
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///Title
              Text(TTexts.signUpTitle, style: Theme.of(context).textTheme.headlineMedium),

              const SizedBox(height: TSizes.spaceBtwSections),


              ///Form
              const TSignupForm(),
              const SizedBox(height: TSizes.spaceBtwSections),

                  ///Divider
                  TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
                  const SizedBox(height: TSizes.spaceBtwSections),


                  ///Social Buttons
                  const TSocialButtons(),

            ],
          ),
        )
      ),
    );
  }
}
