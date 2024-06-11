import 'package:ecommerce_mark1/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:ecommerce_mark1/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:ecommerce_mark1/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../controllers/onboarding/onboarding_controller.dart';
import 'widgets/onboarding_dot_navigation.dart';
import 'widgets/onboarding_page.dart';


class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          ///Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                  image: TImages.onBoardingImages1,
                  title: TTexts.onBoardingTitle1,
                  subTitle: TTexts.onBoardingSubTitle1),
              
              OnBoardingPage(
                  image: TImages.onBoardingImages2,
                  title: TTexts.onBoardingTitle2,
                  subTitle: TTexts.onBoardingSubTitle2),
              
              OnBoardingPage(
                  image: TImages.onBoardingImages3,
                  title: TTexts.onBoardingTitle3,
                  subTitle: TTexts.onBoardingSubTitle3),
            ],
          ),


          const OnBoardingSkip(),

          const OnBoardingDotNavigation(),

          const OnBoardingNextButton()],
      ),
    );
  }
}







