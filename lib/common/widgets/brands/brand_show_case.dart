
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../rounded_container.dart';
import 'brand_card.dart';

class TBrandShowCase extends StatelessWidget {
  const TBrandShowCase({
    super.key, required this.images,
  });

  final List<String> images;
  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      showBorder: true,
      borderColor: TColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      padding: const EdgeInsets.all(TSizes.md),
      child: Column(
          children: [
            ///Brand with Products Count
            const TBrandCard(showBorder: false),
            const SizedBox(height: TSizes.spaceBtwItems),
            ///Brand Top 3 Product Images
            Row(
                children: images.map((image) => brandTopProductImageWidget(image, context)).toList())
          ]),
    );
  }

  Widget brandTopProductImageWidget(String image,context){
    return Expanded(
        child: TRoundedContainer(
          height: 100,
          padding: const EdgeInsets.all(TSizes.md),
          margin: const EdgeInsets.only(right: TSizes.sm),
          backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.darkerGrey : TColors.light,
          child: const Image(fit: BoxFit.fitWidth, image: AssetImage(TImages.sneaker4)),
        ));
  }
}
