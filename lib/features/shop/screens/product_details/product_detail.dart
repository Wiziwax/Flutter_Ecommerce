import 'package:ecommerce_mark1/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_mark1/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:ecommerce_mark1/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:ecommerce_mark1/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:ecommerce_mark1/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:ecommerce_mark1/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:ecommerce_mark1/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:ecommerce_mark1/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';


import '../../../../utils/constants/sizes.dart';


class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// 1 - Product Image Slider
            TProductImageSlider(dark: dark),

            /// 2 - Product Details
          Padding(padding: const EdgeInsets.only(right: TSizes.defaultSpace, left: TSizes.defaultSpace, bottom: TSizes.defaultSpace),
          child: Column(
            children: [
              /// - Rating & Share Button
              const TRatingAndShare(),

              /// - Price, Title, Stock & Brand
              const TProductMetaData(),


              /// - Attributes
              const TProductAttributes(),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// - Checkout Button
              SizedBox(
                width: double.infinity,
                  child: ElevatedButton(onPressed: (){}, child: Text('Checkout'))),
              const SizedBox(height: TSizes.spaceBtwSections),


              /// - Description
              const TSectionHeading(title: 'Description', showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwItems),
              const ReadMoreText(
                'Anime (Japanese: アニメ, IPA: [aꜜɲime] ⓘ) is hand-drawn and computer-generated animation originating from Japan. '
                    'Outside Japan and in English, anime refers specifically to animation produced in Japan.[1] However, in Japan'
                    ' and Japanese, anime (a term derived from a shortening of the English word animation) describes all animated '
                    'works, regardless of style or origin. Many works of animation with a similar style to Japanese animation are '
                    'also produced outside Japan. Video games sometimes also feature themes and art styles that are sometimes labelled as anime.',
                trimLines: 2,
                trimMode: TrimMode.Line,
                trimCollapsedText: 'Show more',
                trimExpandedText: 'Less',
                moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
              ),

              /// - Reviews
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const TSectionHeading(title: 'Reviews(199)', showActionButton: true),
                  IconButton(onPressed: ()=> Get.to(() => const ProductReviewsScreen()), icon: const Icon(Iconsax.arrow_right_3))
                ],
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

            ],
          ),)
          ],
        ),
      ),
    );
  }
}


