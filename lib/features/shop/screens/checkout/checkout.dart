import 'package:ecommerce_mark1/common/widgets/rounded_container.dart';
import 'package:ecommerce_mark1/common/widgets/success_screen/success_screen.dart';
import 'package:ecommerce_mark1/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:ecommerce_mark1/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:ecommerce_mark1/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:ecommerce_mark1/navigation_menu.dart';
import 'package:ecommerce_mark1/utils/constants/colors.dart';
import 'package:ecommerce_mark1/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/products/cart/coupon_widget.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../cart/widgets/cart_items.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
        appBar: TAppBar(showBackArrow: true,
            title:
            Text('Order Review', style: Theme.of(context).textTheme.headlineSmall)),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                  children: [
                    /// Items in Cart

                    const TCartItems(showAddRemoveButtons: false),
                    const SizedBox(height: TSizes.spaceBtwSections),


                    /// Coupon TextField
                    TCouponCode(dark: dark),
                    const SizedBox(height: TSizes.spaceBtwSections),

                    ///Billing Section
                    TRoundedContainer(
                      showBorder: true,
                      padding: const EdgeInsets.all(TSizes.md),
                      backgroundColor: dark ? TColors.black : TColors.white,
                      child: const Column(
                        children: [
                          ///Pricing
                          TBillingAmountSection(),
                          SizedBox(height: TSizes.spaceBtwItems),

                          ///Divider
                          Divider(),
                          SizedBox(height: TSizes.spaceBtwItems),

                          ///Payment Methods
                          TBillingPaymentSection(),
                          SizedBox(height: TSizes.spaceBtwItems),
                          ///Address
                          TBillingAddressSection(),
                          SizedBox(height: TSizes.spaceBtwItems),
                        ],
                      ),
                    )

                  ],
                ),
              ),
            ),

      /// Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: ()=>Get.to(
                  () => SuccessScreen(
                      image: TImages.successPayment,
                      title: 'Payment Success',
                      subtitle: 'Your item will be shipped soon',
                      onPressed: ()=> Get.offAll(() => const NavigationMenu()),
                  ))
          , child: const Text('Checkout \$256.0')),
      ),
    );
  }
}
