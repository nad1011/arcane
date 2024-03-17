import 'package:arcane/common/styles/spacing_styles.dart';
import 'package:arcane/common/widgets/login_signup/divider.dart';
import 'package:arcane/common/widgets/login_signup/social_buttons.dart';
import 'package:arcane/utils/constants/sizes.dart';
import 'package:arcane/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

import 'widgets/login_form.dart';
import 'widgets/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: CusSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //   header
              const LoginHeader(),

              //   form
              const LoginForm(),

              //   login button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(CusSizes.md),
                  ),
                  child: const Text(CusTexts.signIn),
                ),
              ),
              const SizedBox(height: CusSizes.spaceBtwItems),

              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.all(CusSizes.md),
                  ),
                  child: const Text(CusTexts.createAccount),
                ),
              ),
              const SizedBox(height: CusSizes.spaceBtwSections),

              // divider
              const CusDivider(text: CusTexts.orSignInWith),
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
