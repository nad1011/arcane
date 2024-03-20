import 'package:arcane/utils/constants/sizes.dart';
import 'package:arcane/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../verify_email.dart';
import 'signup_checkbox.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(children: [
      Row(
        children: [
          Expanded(
            child: TextFormField(
              expands: false,
              decoration: const InputDecoration(
                labelText: CusTexts.firstName,
              ),
            ),
          ),
          const SizedBox(width: CusSizes.spaceBtwInputFields),
          Expanded(
            child: TextFormField(
              expands: false,
              decoration: const InputDecoration(
                labelText: CusTexts.lastName,
              ),
            ),
          ),
        ],
      ),
      const SizedBox(height: CusSizes.spaceBtwInputFields),
      //   username
      TextFormField(
          decoration: const InputDecoration(
        prefixIcon: Icon(Iconsax.user),
        labelText: CusTexts.username,
      )),
      const SizedBox(height: CusSizes.spaceBtwInputFields),
      //   email
      TextFormField(
        decoration: const InputDecoration(
          prefixIcon: Icon(Iconsax.direct),
          labelText: CusTexts.email,
        ),
      ),
      const SizedBox(height: CusSizes.spaceBtwInputFields),

      //   phone number
      TextFormField(
        decoration: const InputDecoration(
          prefixIcon: Icon(Iconsax.call_add),
          labelText: CusTexts.phoneNo,
        ),
      ),
      //   password
      const SizedBox(height: CusSizes.spaceBtwInputFields),

      TextFormField(
        decoration: const InputDecoration(
          prefixIcon: Icon(Iconsax.lock),
          suffixIcon: Icon(Iconsax.eye_slash),
          labelText: CusTexts.password,
        ),
      ),
      const SizedBox(height: CusSizes.spaceBtwSections),

      const SignupCheckbox(),
      const SizedBox(height: CusSizes.spaceBtwSections),

      //   signup button
      SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            Get.to(() => const VerifyEmailScreen());
          },
          child: const Text(CusTexts.createAccount),
        ),
      ),
    ]));
  }
}
