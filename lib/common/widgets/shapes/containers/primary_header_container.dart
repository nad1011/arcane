import 'package:arcane/common/widgets/shapes/containers/cicular_container.dart';
import 'package:arcane/common/widgets/shapes/curved_edges/curved_edges.dart';
import 'package:arcane/utils/constants/colors.dart';
import 'package:arcane/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      // borderRadius: const BorderRadius.only(
      //   bottomLeft: Radius.circular(CusSizes.borderRadiusXl),
      //   bottomRight: Radius.circular(CusSizes.borderRadiusXl),
      // ),
      clipper: CusCurvedEdges(),
      child: Container(
        color: CusColors.buttonPrimary,
        padding: const EdgeInsets.only(bottom: CusSizes.lg),
        child: SizedBox(
          // height: CusHelperFunctions.screenHeight() * 0.38,
          width: double.infinity,
          child: Stack(children: [
            Positioned(
              top: -50,
              right: -70,
              child: CusContainer(
                color: CusColors.white.withOpacity(0.2),
              ),
            ),
            Positioned(
              top: -100,
              right: 50,
              child: CusContainer(
                color: CusColors.white.withOpacity(0.2),
              ),
            ),
            Positioned(
              bottom: -50,
              left: -50,
              child: CusContainer(
                color: CusColors.white.withOpacity(0.2),
              ),
            ),
            child
          ]),
        ),
      ),
    );
  }
}
