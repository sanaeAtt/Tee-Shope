import 'package:e_commerce_app/utils/constants/imgesString.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/txtString.dart';
import 'package:flutter/material.dart';

class LogiHeader extends StatelessWidget {
  const LogiHeader({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(dark ? TImages.lightAppLogo : TImages.darkAppLogo),
        ),
        Text(
          TxtString.logingTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: TSizes.sm,
        ),
        Text(TxtString.logingSubTitle,
            style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}
