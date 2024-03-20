import 'package:arcane/common/widgets/login_signup/divider.dart';
import 'package:arcane/common/widgets/login_signup/social_buttons.dart';
import 'package:arcane/utils/constants/sizes.dart';
import 'package:arcane/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

import 'widgets/signup_form.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CusSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(CusTexts.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: CusSizes.spaceBtwSections),
              //   form
              const SignupForm(),

              const SizedBox(height: CusSizes.spaceBtwSections),

              // divider
              const CusDivider(text: CusTexts.orSignUpWith),
              const SizedBox(height: CusSizes.spaceBtwItems),
              //  social media sign in buttons
              const SocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
