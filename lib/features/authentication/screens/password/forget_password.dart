import 'package:arcane/features/authentication/screens/password/reset_password.dart';
import 'package:arcane/utils/constants/image_strings.dart';
import 'package:arcane/utils/constants/sizes.dart';
import 'package:arcane/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(CusSizes.defaultSpace),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(CusTexts.forgetPasswordTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: CusSizes.spaceBtwItems),
              Text(CusTexts.forgetPasswordSubTitle,
                  style: Theme.of(context).textTheme.labelLarge),
              const Image(
                  image: AssetImage(CusImages.forgetPasswordBanner),
                  width: double.infinity,
                  height: 350),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: CusTexts.email,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
              const SizedBox(height: CusSizes.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => const ResetPassword());
                  },
                  child: const Text(CusTexts.submit),
                ),
              ),
            ]),
          ),
        ));
  }
}
