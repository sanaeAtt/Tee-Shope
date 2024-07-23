// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_import

import 'package:e_commerce_app/features/authentification/controllers.onBoard/onboardingController.dart';
import 'package:e_commerce_app/features/authentification/screens/onBoarding/widgets/onBoardSkip.dart';
import 'package:e_commerce_app/features/authentification/screens/onBoarding/widgets/onBoardingDotNavigation.dart';
import 'package:e_commerce_app/features/authentification/screens/onBoarding/widgets/onBoardingNextBtn.dart';
import 'package:e_commerce_app/features/authentification/screens/onBoarding/widgets/onBoardingPage.dart';
import 'package:e_commerce_app/utils/constants/imgesString.dart';
import 'package:e_commerce_app/utils/constants/txtString.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final control = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: control.pageController,
            onPageChanged: control.updatePageIndicator,
            children: [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TxtString.onBoardingTitle1,
                subtitle: TxtString.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TxtString.onBoardingTitle2,
                subtitle: TxtString.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TxtString.onBoardingTitle3,
                subtitle: TxtString.onBoardingSubTitle3,
              ),
            ],
          ),
          onBoardSkip(),
          onBoardingDotNavigation(),
          onBoardingNextButton(),
        ],
      ),
    );
  }
}
