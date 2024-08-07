import 'package:ecommerce_mark1/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class TCircularIcon extends StatelessWidget {
  ///A custom circular icon widget with a background color
  ///
  /// Properties are:
  /// Container [width], [height] & [backgroundColor]
  ///
  /// Icon's [size], [color] & [onPressed]
  const TCircularIcon({
    super.key,
    required this.icon,
    this.width,
    this.height,
    this.size = TSizes.lg,
    this.onPressed,
    this.color,
    this.backgroundColor,
    // required this.dark,
  });

  // final bool dark;
  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final dark  = THelperFunctions.isDarkMode(context);
    return Container(
      width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: backgroundColor != null
          ? backgroundColor!
          : THelperFunctions.isDarkMode(context)
              ? TColors.black.withOpacity(0.9)
              : TColors.white.withOpacity(0.9)
        ),

        child: IconButton(onPressed: onPressed, icon: Icon(icon, color: color, size: size))
    );
  }
}
