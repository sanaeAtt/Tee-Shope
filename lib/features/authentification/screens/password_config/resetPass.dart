import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/imgesString.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/txtString.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Resetpass extends StatelessWidget {
  const Resetpass({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFuctions.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(CupertinoIcons.clear),
            color: dark ? TColors.white : TColors.black,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              Image(
                image: const AssetImage(TImages.sentEmail),
                width: HelperFuctions.screenWidth() * .6,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSection,
              ),

              // Titles
              Text(
                TxtString.changeYourPassordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItm,
              ),
              Text(
                TxtString.changeYourPassordsubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSection,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(TxtString.done),
                ),
              ),
              const SizedBox(
                height: TSizes.spaceBtwItm,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(TxtString.resendMail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
