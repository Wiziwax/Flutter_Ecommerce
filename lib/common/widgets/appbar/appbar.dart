import 'package:ecommerce_mark1/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';

class TAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TAppBar({
    super.key,
    this.title,
    this.actions,
    this.leadingIcon,
    this.leadingOnPressed,
    this.showBackArrow = false,
  });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    final iconColor = isDark ? Colors.white : Colors.black;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.md),
      child: AppBar(
          automaticallyImplyLeading: false,
          leading: showBackArrow
              ? IconButton(
                  onPressed: () => Get.back(),
                  icon: const Icon(Iconsax.arrow_left), color: iconColor,)
              : leadingIcon != null
                  ? IconButton(
                      onPressed: () => leadingOnPressed,
                      icon: Icon(leadingIcon, color: iconColor,))
                  : null,
        title: title,
        actions: actions,

      ),

    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
