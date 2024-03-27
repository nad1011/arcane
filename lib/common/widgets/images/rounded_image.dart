import 'package:arcane/utils/constants/colors.dart';
import 'package:arcane/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class RoundedImage extends StatelessWidget {
  const RoundedImage({
    super.key,
    this.height,
    this.width,
    required this.imageUrl,
    this.borderRadius = CusSizes.borderRadiusXxl,
    this.fit = BoxFit.cover,
    this.padding,
    this.onTap,
    this.isNetWorkImage = false,
    this.backgroundColor = CusColors.white,
  });

  final double? height, width;
  final String imageUrl;
  final double borderRadius;
  final BoxFit fit;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onTap;
  final bool isNetWorkImage;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          padding: padding,
          width: width,
          height: height,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius), color: backgroundColor),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(borderRadius),
              child: Image(
                  fit: BoxFit.fill,
                  image: isNetWorkImage
                      ? NetworkImage(imageUrl)
                      : AssetImage(imageUrl) as ImageProvider))),
    );
  }
}
