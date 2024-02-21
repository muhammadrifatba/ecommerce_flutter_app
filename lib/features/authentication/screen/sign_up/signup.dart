import "package:flutter/material.dart";
import "package:t_store/common/styles/spacing_styles.dart";
import "package:t_store/common/widgets/login_signup_widgets/form_divider.dart";
import "package:t_store/common/widgets/login_signup_widgets/form_social_button.dart";
import "package:t_store/features/authentication/screen/sign_up/sign_up_widget/sign_up_form.dart";
import "package:t_store/utils/constants/sizes.dart";
import "package:t_store/utils/constants/text_strings.dart";

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarhHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(TTexts.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: TSizes.spaceBtwItems),
              //Form
              const SignUpForm(),
              
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              const TFormDivider(dividerTexts: TTexts.orSignUpWith),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              const TSocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}
