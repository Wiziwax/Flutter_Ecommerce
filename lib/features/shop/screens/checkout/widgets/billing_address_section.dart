import 'package:ecommerce_mark1/common/widgets/texts/section_heading.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class TBillingAddressSection extends StatelessWidget {
  const TBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeading(
            title: 'Shipping Address', buttonTitle: 'Change', onPressed: () {}),
        Text('Coding with T', style: Theme.of(context).textTheme.bodyLarge),
        Row(
          children: [
            const Icon(Icons.phone, color: Colors.grey, size: 16),
            const SizedBox(height: TSizes.spaceBtwItems),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text('+92-317805925', style: Theme.of(context).textTheme.bodyMedium)
          ],
        ),
            const SizedBox(height: TSizes.spaceBtwItems),

        Row(children: [
          const Icon(Icons.location_history, color: Colors.grey, size: 16),
          const SizedBox(width: TSizes.spaceBtwItems),
          Expanded(child: Text('South Liana, Maine 87695', style: Theme.of(context).textTheme.bodyMedium, softWrap: true,))
        ],)

      ],
    );
  }
}
