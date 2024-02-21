import 'package:flutter/material.dart';
import 'package:t_store/common/styles/spacing_styles.dart';
import 'package:t_store/common/widgets/login_signup_widgets/form_divider.dart';
import 'package:t_store/common/widgets/login_signup_widgets/form_social_button.dart';
import 'package:t_store/features/authentication/screen/login/widgets/login_form.dart';
import 'package:t_store/features/authentication/screen/login/widgets/login_header.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarhHeight,
          child: Column(
            children: [
              TLoginHeader(),
              TLoginForm(),
              //Divider
              TFormDivider(dividerTexts: TTexts.orSignInWith),
              SizedBox(
                height: TSizes.spaceBtwSections / 2,
              ),
              TSocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}
