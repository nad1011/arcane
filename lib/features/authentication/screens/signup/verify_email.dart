import 'package:arcane/common/widgets/success_screen/success_screen.dart';
import 'package:arcane/features/authentication/screens/login/login.dart';
import 'package:arcane/utils/constants/colors.dart';
import 'package:arcane/utils/constants/image_strings.dart';
import 'package:arcane/utils/constants/sizes.dart';
import 'package:arcane/utils/constants/text_strings.dart';
import 'package:arcane/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

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
                image: const AssetImage(CusImages.carryingGiftIllustration),
                width: CusHelperFunctions.screenWidth() * 0.8,
              ),
              const SizedBox(height: CusSizes.spaceBtwSections),
              Text(CusTexts.confirmEmail,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: CusSizes.spaceBtwSections),
              Text(
                'YourEmail@gmail.com',
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: CusSizes.spaceBtwSections),
              Text(
                CusTexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: CusSizes.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => SuccessScreen(
                          image: const AssetImage(
                              CusImages.staticSuccessIllustration),
                          title: CusTexts.yourAccountCreatedTitle,
                          subTitle: CusTexts.yourAccountCreatedSubTitle,
                          onPressed: () => Get.to(() => const LoginScreen()),
                        ));
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(CusSizes.md),
                  ),
                  child: const Text(CusTexts.cusContinue),
                ),
              ),
              const SizedBox(height: CusSizes.spaceBtwItems),
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(
                    CusColors.primary.withOpacity(0.2),
                  ),
                ),
                child: Text(CusTexts.resendEmail,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: CusHelperFunctions.isDarkMode(context)
                              ? CusColors.textWhite
                              : CusColors.textSecondary,
                        )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
