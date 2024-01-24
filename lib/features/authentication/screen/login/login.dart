import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/styles/spacing_styles.dart';
import 'package:t_store/common/widgets/login_signup_widgets/form_divider.dart';
import 'package:t_store/common/widgets/login_signup_widgets/form_social_button.dart';
import 'package:t_store/features/authentication/screen/login/widgets/login_form.dart';
import 'package:t_store/features/authentication/screen/login/widgets/login_header.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

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
