import 'package:ecommerce_mark1/common/widgets/appbar.dart';
import 'package:ecommerce_mark1/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:ecommerce_mark1/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/products.cart/cart_menu_icon.dart';
import '../../../../utils/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///Header -- Tutorial [Section #3, Video #2]
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  ///Appbar -- Tutorial [Section #3, Video #3]
                  THomeAppBar()

                  /// -- Searchbar -- Tutorial [Section #3, Video #4]

                  /// -- Categories -- Tutorial [Section #3, Video #4]
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
