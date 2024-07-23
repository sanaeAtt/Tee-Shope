// ignore_for_file: file_names

import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/txtString.dart';
import 'package:flutter/material.dart';

class TermsandCondition extends StatelessWidget {
  const TermsandCondition({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 24,
          width: 24,
          child: Checkbox(value: true, onChanged: (v) => {}),
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: ' ${TxtString.iAgreeTo} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: '${TxtString.terms} ',
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? TColors.white : TColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: dark ? TColors.white : TColors.primary,
                    ),
              ),
              TextSpan(
                text: '${TxtString.and} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: '${TxtString.privacyPolicy} ',
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? TColors.white : TColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: dark ? TColors.white : TColors.primary,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
