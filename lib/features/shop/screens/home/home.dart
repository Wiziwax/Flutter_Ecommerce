import 'package:ecommerce_mark1/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:ecommerce_mark1/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                  const SizedBox(height: TSizes.spaceBtwSections,),
                  /// -- Searchbar -- Tutorial [Section #3, Video #4]

                  const SizedBox(height: TSizes.spaceBtwSections),
                  const TSearchContainer(text: 'Search in Store', icon: Iconsax.search_normal),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  /// -- Categories -- Tutorial [Section #3, Video #4]
                  
                  Padding(padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        const TSectionHeading(title: 'Popular Categories', showActionButton: false, textColor: Colors.white,),

                        const SizedBox(height: TSizes.spaceBtwItems),

                        ///Categories
                        SizedBox(
                          height: 80,
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: 6,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (_, index){
                              return TVerticalImageText(image: TImages.shoeIcon, title: 'Shoes', onTap: (){},);
                              }
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TVerticalImageText extends StatelessWidget {
  const TVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = TColors.white,
    this.backgroundColor,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;


  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: TSizes.spaceBtwItems),
        child: Column(
          children: [
            ///Circular Icon
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(TSizes.sm),
              decoration: BoxDecoration(
                color: backgroundColor ?? (dark? TColors.black: TColors.white),
                borderRadius: BorderRadius.circular(100)
              ),
              child: Center(
                child: Image(image: AssetImage(image), fit: BoxFit.cover, color: dark ? TColors.light : TColors.dark)

                ),
              ),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            SizedBox(width: 55,
                child: Text(
                    title,
                    style: Theme.of(context).textTheme.labelMedium!.apply(color: textColor),
                    maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ))

          ],
        ),
      ),
    );
  }
}
