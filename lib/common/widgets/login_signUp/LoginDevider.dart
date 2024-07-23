import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class LoginDevider extends StatelessWidget {
  const LoginDevider(
      {super.key, required this.dark, required this.textDevider});
  final String textDevider;
  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? TColors.darkGrey : TColors.grey,
            thickness: .5,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(
          textDevider,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
            color: dark ? TColors.darkGrey : TColors.grey,
            thickness: .5,
            indent: 5,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}
