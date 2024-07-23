import 'package:e_commerce_app/features/authentification/screens/SignUp/SignUp.dart';
import 'package:e_commerce_app/features/authentification/screens/password_config/forgotPass.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/txtString.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSection),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: TxtString.email),
            ),
            const SizedBox(
              height: TSizes.spaceBtwInputeFields,
            ),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: TxtString.pass,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwInputeFields / 2,
            ),

            //remember Me
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (vzlur) {}),
                    const Text(
                      TxtString.remember,
                    ),
                  ],
                ),
                //foretPass
                TextButton(
                  onPressed: () => Get.to(const FogetPass()),
                  child: const Text(
                    TxtString.forgetPassword,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: TSizes.spaceBtwSection,
            ),

            //signIn
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(TxtString.logingTitle),
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwItm,
            ),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => const SignUp()),
                child: const Text(TxtString.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
