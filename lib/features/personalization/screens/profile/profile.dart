import 'package:ecommerce_mark1/common/widgets/images/t_circular_image.dart';
import 'package:ecommerce_mark1/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_mark1/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),

      ///Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              ///Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const TCircularImage(
                      image: TImages.user,
                      width: 80,
                      height: 80, ),
                TextButton(onPressed: (){}, child: const Text('Change Profile Picture'))
                  ],
                ),
              ),
              const TSectionHeading(title: 'Profile Information', showActionButton: false),
              TProfileMenu(onPressed: () {  }, title: 'Name', value: 'Wisdom Donald-Ase'),
              TProfileMenu(onPressed: () {  }, title: 'Username', value: 'Predator1900'),

              ///Details
              const SizedBox(height:  TSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),

              ///Heading Profile Info
              const TSectionHeading(title: 'Personal Information', showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwItems),


              TProfileMenu(onPressed: () {  }, title: 'User ID', value: '45689', icon: Iconsax.copy,),
              TProfileMenu(onPressed: () {  }, title: 'Email', value: 'donaldwisdomnengi@gmail.com'),
              TProfileMenu(onPressed: () {  }, title: 'Phone Number', value: '+234 706 368 2888'),
              TProfileMenu(onPressed: () {  }, title: 'Gender', value: 'Male'),
              TProfileMenu(onPressed: () {  }, title: 'Date of Birth', value: '18th May, 1997'),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),


              Center(
                child: TextButton(
                  onPressed: (){},
                  child: const Text('Close Account', style: TextStyle(color: Colors.red)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
