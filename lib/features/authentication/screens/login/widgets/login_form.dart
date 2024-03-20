import 'package:arcane/features/authentication/screens/password/forget_password.dart';
import 'package:arcane/features/authentication/screens/signup/signup.dart';
import 'package:arcane/utils/constants/colors.dart';
import 'package:arcane/utils/constants/sizes.dart';
import 'package:arcane/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding:
            const EdgeInsets.symmetric(vertical: CusSizes.spaceBtwSections),
        child: Column(children: [
          //   email
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.user),
              labelText: CusTexts.email,
            ),
          ),
          const SizedBox(height: CusSizes.spaceBtwInputFields),

          //   password
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.lock),
              suffixIcon: Icon(Iconsax.eye_slash),
              labelText: CusTexts.password,
            ),
          ),
          const SizedBox(height: CusSizes.sm),

          //   remember me and forgot password
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  Text(CusTexts.rememberMe,
                      style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
              TextButton(
                onPressed: () {
                  Get.to(() => const ForgetPassword());
                },
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(
                    CusColors.primary.withOpacity(0.1),
                  ),
                ),
                child: Text(CusTexts.forgetPassword,
                    style: Theme.of(context).textTheme.bodySmall),
              )
            ],
          ),
          const SizedBox(height: CusSizes.spaceBtwSections),

          //   login button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(CusTexts.signIn),
            ),
          ),
          const SizedBox(height: CusSizes.spaceBtwItems),

          //   create account
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () {
                Get.to(() => const SignupScreen());
              },
              child: const Text(CusTexts.createAccount),
            ),
          ),
        ]),
      ),
    );
  }
}
