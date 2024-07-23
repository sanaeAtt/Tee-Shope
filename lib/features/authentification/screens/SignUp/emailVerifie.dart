import 'package:e_commerce_app/common/widgets/sucessScreen/successScreen.dart';
import 'package:e_commerce_app/features/authentification/screens/loggin/login.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/imgesString.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/txtString.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmailVerify extends StatelessWidget {
  const EmailVerify({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFuctions.isDarkMode(context);
    const email = "hgsjgs@jjhgqx.su";

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const LoginScreen()),
            icon: const Icon(
              CupertinoIcons.clear,
            ),
            color: dark ? TColors.white : TColors.black,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(
            TSizes.defaultSpace,
          ),
          child: Column(
            children: [
              Image(
                image: const AssetImage(
                  TImages.sentEmail,
                ),
                width: HelperFuctions.screenWidth() * .6,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSection,
              ),

              // Titles
              Text(
                TxtString.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItm,
              ),
              Text(
                email,
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItm,
              ),
              Text(
                TxtString.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSection,
              ),
              // Buttons

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  child: const Text(TxtString.tContinue),
                  onPressed: () => Get.to(() => SuccessScreen(
                        img: TImages.verificationSucced,
                        title: TxtString.YourAccountCreatedTitle,
                        subTitle: TxtString.YourAccountCreatedSubTitle,
                        onPressed: () => Get.to(() => const LoginScreen()),
                      )),
                ),
              ),
              const SizedBox(
                height: TSizes.spaceBtwItm,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  child: const Text(TxtString.resendMail),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
