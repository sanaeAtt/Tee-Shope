import 'package:e_commerce_app/features/authentification/screens/password_config/resetPass.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/txtString.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class FogetPass extends StatelessWidget {
  const FogetPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(
            TSizes.defaultSpace,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //head
              Text(
                TxtString.forgetPassword,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItm,
              ),
              Text(
                TxtString.forgetPasswordSubTite,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSection * 2,
              ),
              //txtField
              TextFormField(
                decoration: const InputDecoration(
                  labelText: TxtString.email,
                  prefixIcon: Icon(Iconsax.direct_right),
                ),
              ),
              const SizedBox(
                height: TSizes.spaceBtwSection,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.off(const Resetpass()),
                  child: const Text(
                    TxtString.submit,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
