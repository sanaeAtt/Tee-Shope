// ignore_for_file: camel_case_types

import 'package:e_commerce_app/features/authentification/controllers.onBoard/onboardingController.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/device/deviceUtility.dart';
import 'package:flutter/material.dart';

class onBoardSkip extends StatelessWidget {
  const onBoardSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final control = OnboardingController.instance;
    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: TSizes.defaultSpace,
      child: TextButton(
        onPressed: control.skipPage,
        child: const Text('Skip'),
      ),
    );
  }
}
