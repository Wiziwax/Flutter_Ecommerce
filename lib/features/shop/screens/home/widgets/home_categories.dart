import 'package:ecommerce_mark1/features/shop/screens/sub_category/sub_categories.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../category.dart';
import '../../../../../common/widgets/image_text_widgets/vertical_image_text.dart';


class THomeCategories extends StatelessWidget {
  final List<Category> categories;

  const THomeCategories({
    super.key,
    required this.categories,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          final category = categories[index];
          return TVerticalImageText(
            image: category.imagePath,
            title: category.title,
            // onTap: category.onTap,
            onTap: ()=> Get.to(() => const SubCategoriesScreen()),
          );
        },
      ),
    );
  }
}
