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
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: CusSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //   header
              LoginHeader(),

              //   form
              LoginForm(),

              // divider
              CusDivider(text: CusTexts.orSignInWith),
              SizedBox(height: CusSizes.spaceBtwItems),

              //  social media sign in buttons
              SocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
