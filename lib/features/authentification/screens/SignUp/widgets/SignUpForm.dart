// ignore_for_file: file_names

import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/txtString.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          //name
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: TxtString.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(
                width: TSizes.spaceBtwInputeFields,
              ),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: TxtString.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputeFields,
          ),

          //userName
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: TxtString.userName,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),

          const SizedBox(
            height: TSizes.spaceBtwInputeFields,
          ),

          //mail
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: TxtString.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),

          const SizedBox(
            height: TSizes.spaceBtwInputeFields,
          ),

          // phon
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: TxtString.phone,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),

          const SizedBox(
            height: TSizes.spaceBtwInputeFields,
          ),
          //password
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: TxtString.pass,
                prefixIcon: Icon(Iconsax.check),
                suffixIcon: Icon(Iconsax.eye_slash)),
          ),

          const SizedBox(
            height: TSizes.spaceBtwInputeFields,
          ),
        ],
      ),
    );
  }
}
