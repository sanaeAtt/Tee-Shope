import 'package:e_commerce_app/common/widgets/login_signUp/LoginDevider.dart';
import 'package:e_commerce_app/common/widgets/login_signUp/LoginFooter.dart';
import 'package:e_commerce_app/features/authentification/screens/SignUp/emailVerifie.dart';
import 'package:e_commerce_app/features/authentification/screens/SignUp/widgets/SignUpForm.dart';
import 'package:e_commerce_app/features/authentification/screens/SignUp/widgets/TermsAndCondition.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/txtString.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFuctions.isDarkMode(context);
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  TxtString.signUp,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(
                  height: TSizes.spaceBtwSection,
                ),

                //Form
                const SignUpForm(),

                TermsandCondition(dark: dark),

                const SizedBox(
                  height: TSizes.spaceBtwSection,
                ),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => Get.to(const EmailVerify()),
                    child: const Text(TxtString.createAccount),
                  ),
                ),

                const SizedBox(
                  height: TSizes.spaceBtwSection,
                ),

                LoginDevider(
                  dark: dark,
                  textDevider: TxtString.orSignUpWith.capitalize!,
                ),

                const SizedBox(
                  height: TSizes.spaceBtwSection,
                ),

                const LoginFooter()
              ],
            ),
          ),
        ));
  }
}
