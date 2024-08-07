import 'package:ecommerce_mark1/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_mark1/common/widgets/icons/circular_icon.dart';
import 'package:ecommerce_mark1/common/widgets/images/t_rounded_image.dart';
import 'package:ecommerce_mark1/common/widgets/texts/product_price_text.dart';
import 'package:ecommerce_mark1/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce_mark1/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:ecommerce_mark1/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:ecommerce_mark1/features/shop/screens/checkout/checkout.dart';
import 'package:ecommerce_mark1/utils/constants/colors.dart';
import 'package:ecommerce_mark1/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/products/cart/add_remove_button.dart';
import '../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(showBackArrow: true,
          title:
              Text('Cart', style: Theme.of(context).textTheme.headlineSmall)),
      body: const Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),

        /// Items in Cart
        child: TCartItems(),
      ),

      ///Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(onPressed: ()=> Get.to(() => const CheckoutScreen()), child: const Text('Checkout \$256.0')),
      ),
    );
  }
}
