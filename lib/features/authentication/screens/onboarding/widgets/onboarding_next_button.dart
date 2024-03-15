import 'package:arcane/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:arcane/utils/constants/colors.dart';
import 'package:arcane/utils/constants/sizes.dart';
import 'package:arcane/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class OnBoardingNextButton extends StatefulWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  State<StatefulWidget> createState() => _OnBoardingNextButtonState();
}

class _OnBoardingNextButtonState extends State<OnBoardingNextButton> {
  final controller = OnBoardingController.instance;
  OutlinedBorder _shape = const CircleBorder();
  bool _showText = false;

  @override
  void initState() {
    super.initState();
    // Listen for changes in currentPage
    controller.addListener(_onCurrentPageChange);
  }

  @override
  void dispose() {
    controller.removeListener(_onCurrentPageChange);
    super.dispose();
  }

  void _onCurrentPageChange() {
    setState(() {
      _showText = controller.currentPage.value == 2;
      _shape = controller.currentPage.value == 2
          ? RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(CusSizes.lg))
          : const CircleBorder();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: CusDeviceUtils.getBottomNavigationBarHeight(),
        right: CusSizes.defaultSpace,
        child: ElevatedButton(
            onPressed: () {
              controller.nextPage();
            },
            style: ElevatedButton.styleFrom(
              shape: _shape,
              padding: const EdgeInsets.all(CusSizes.md),
            ),
            child: _showText
                ? Text('Get Started',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: CusColors.white))
                : const Icon(Icons.arrow_forward_ios_rounded, color: CusColors.white)));
  }
}
