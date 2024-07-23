import 'package:e_commerce_app/common/styles/spacingStyles.dart';
import 'package:e_commerce_app/common/widgets/login_signUp/LoginDevider.dart';
import 'package:e_commerce_app/common/widgets/login_signUp/LoginFooter.dart';
import 'package:e_commerce_app/features/authentification/screens/loggin/widgets/LoginHeader.dart';
import 'package:e_commerce_app/features/authentification/screens/loggin/widgets/loginForm.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/txtString.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFuctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //header
              LogiHeader(dark: dark),
              //form
              const LoginForm(),

              //Devider
              LoginDevider(
                dark: dark,
                textDevider: TxtString.orSignUpWith.capitalize!,
              ),

              const SizedBox(
                height: TSizes.spaceBtwSection,
              ),
              //fotterrr
              const LoginFooter()
            ],
          ),
        ),
      ),
    );
  }
}
