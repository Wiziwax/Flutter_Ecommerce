import 'package:ecommerce_mark1/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:ecommerce_mark1/features/shop/screens/home/widgets/home_categories.dart';
import 'package:ecommerce_mark1/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../category.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/products/product_cards/product_card_vertical.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = [
      Category(imagePath: TImages.shoeIcon, title: 'Shoes', onTap: () {}),
      Category(imagePath: TImages.clothing, title: 'Clothing', onTap: () {}),
      Category(
          imagePath: TImages.cosmeticIcon, title: 'Cosmetics', onTap: () {}),
      Category(
          imagePath: TImages.jeweleryIcon, title: 'Jewelery', onTap: () {}),
      Category(imagePath: TImages.sportIcon, title: 'Sports', onTap: () {}),
      Category(
          imagePath: TImages.electronicsIcon,
          title: 'Electronics',
          onTap: () {}),
      Category(
          imagePath: TImages.trueFurniture, title: 'Furniture', onTap: () {}),
      Category(imagePath: TImages.toyIcon, title: 'Toys', onTap: () {}),
      // Add more categories as needed
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///Header -- Tutorial [Section #3, Video #2]
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  ///Appbar -- Tutorial [Section #3, Video #3]
                  const THomeAppBar(),

                  /// -- Searchbar -- Tutorial [Section #3, Video #4]
                  const SizedBox(height: TSizes.spaceBtwItems),
                  const TSearchContainer(
                      text: 'Search in Store', icon: Iconsax.search_normal),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  /// -- Categories -- Tutorial [Section #3, Video #4]
                  Padding(
                    padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        const TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),

                        const SizedBox(height: TSizes.spaceBtwItems),

                        ///Categories
                        THomeCategories(categories: categories),
                      ],
                    ),
                  ),

                  const SizedBox(height: TSizes.spaceBtwSections)
                ],
              ),
            ),

            ///Body
            Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                  children: [
                    ///Promo Slider
                    const TPromoSlider(banners: [
                      TImages.promoBanner1,
                      TImages.promoBanner4,
                      TImages.promoBanner6,
                      TImages.promoBanner2
                    ]),
                    const SizedBox(height: TSizes.spaceBtwItems),

                    ///Heading
                    TSectionHeading(
                      title: 'Popular Products',
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),

                    ///Popular Products
                    TGridLayout(itemCount: 4, itemBuilder: (_, index) => const TProductCardVertical())
                    // TGridLayout(
                    //   itemCount: 4,
                    //   itemBuilder: (_, index) {
                    //     List<String> imageUrls = [
                    //       TImages.cloth,
                    //       TImages.cloth2,
                    //       TImages.cloth3,
                    //       TImages.cloth4,
                    //     ];
                    //
                    //     return TProductCardVertical(imageUrl: imageUrls[index]);
                    //   },
                    // )
                    // // TProductCardVertical()
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
