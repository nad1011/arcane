import 'package:arcane/features/authentication/screens/login/login.dart';
import 'package:arcane/utils/constants/image_strings.dart';
import 'package:arcane/utils/constants/sizes.dart';
import 'package:arcane/utils/constants/text_strings.dart';
import 'package:arcane/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              Get.to(() => const LoginScreen());
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CusSizes.defaultSpace),
          child: Column(
            children: [
              Image(
                image: const AssetImage(CusImages.deliveredEmailIllustration),
                width: CusHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: CusSizes.spaceBtwSections),
              Text(CusTexts.changeYourPasswordTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: CusSizes.spaceBtwItems),
              Text(
                CusTexts.changeYourPasswordSubTitle,
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: CusSizes.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(CusTexts.done),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
