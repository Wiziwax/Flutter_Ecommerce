import 'package:ecommerce_mark1/common/widgets/images/t_rounded_image.dart';
import 'package:ecommerce_mark1/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce_mark1/utils/constants/colors.dart';
import 'package:ecommerce_mark1/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../styles/shadow_style.dart';
import '../../icons/circular_icon.dart';
import '../../rounded_container.dart';
import '../../texts/product_price_text.dart';


class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {

    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: (){},
      child: Container(
        // width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkerGrey : TColors.white
        ),

        child: Column(
          children: [
            ///Thumbnail, Wishlist Button, Discount Tag
            TRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColors.dark : TColors.light,
              child:  Stack(
                children: [
                  ///Thumbnail Image
                  const TRoundedImage(imageUrl: TImages.cloth2, applyImageRadius: true),

                  ///Sale Tag
                  Positioned(
                    top: 12,
                    child: TRoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: TColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(horizontal: TSizes.sm,vertical: TSizes.xs),
                      child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black)),
                    ),
                  ),

                  /// --Favourite Icon Button

                  const Positioned(
                    top: 0,
                      right: 0,
                      child: TCircularIcon(icon: Iconsax.heart5, color: Colors.red))
                ],
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems /2),


            ///--- Details
             Padding(
                padding: const EdgeInsets.only(left: TSizes.sm),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TProductTitleText(title: 'Cool Jacket', smallSize: true),
                const SizedBox(height: TSizes.spaceBtwItems/2),
                Row(
                  children: [
                    Text('Adidas', overflow: TextOverflow.ellipsis, maxLines: 1, style: Theme.of(context).textTheme.labelMedium),
                    const SizedBox(width: TSizes.xs),
                    const Icon(Iconsax.verify5, color: TColors.primary, size: TSizes.iconXs)
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ///Price
                    const TProductPriceText(price: '35.0', isLarge: true),

                    ///Add to Cart Button
                    Container(
                      decoration: const BoxDecoration(
                        color: TColors.dark,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(TSizes.cardRadiusMd),
                          bottomRight: Radius.circular(TSizes.productImageRadius)
                        )
                      ),
                      child: const SizedBox(
                          width: TSizes.iconLg * 1.2,
                          height: TSizes.iconLg *1.2,
                          child: Center(child: Icon(Iconsax.add, color: TColors.white))),
                    )

                  ],
                )
              ],
            ),)
          ],
        ),
      ),
    );
  }
}