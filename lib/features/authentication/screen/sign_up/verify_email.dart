import "package:firebase_auth/firebase_auth.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:t_store/common/styles/spacing_styles.dart";
import "package:t_store/data/repositories/repositories_authentication/authentication_repository.dart";
import "package:t_store/features/authentication/controllers/sign_up/verify_email_controller.dart";
import "package:t_store/features/authentication/screen/login/login.dart";
import "package:t_store/features/authentication/screen/sign_up/succes_screen.dart";
import "package:t_store/utils/constants/image_strings.dart";
import "package:t_store/utils/constants/sizes.dart";
import "package:t_store/utils/constants/text_strings.dart";
import "package:t_store/utils/exceptions/firebase_auth_exceptions.dart";
import "package:t_store/utils/exceptions/firebase_exceptions.dart";
import "package:t_store/utils/exceptions/format_exceptions.dart";
import "package:t_store/utils/exceptions/platform_exceptions.dart";
import "package:t_store/utils/helpers/helper_functions.dart";
import "package:t_store/utils/theme/widget_themes/text_theme.dart";

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key, this.email});

  final String? email;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(VerifiyEmailController());
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => AuthenticationRepository.instance.logout(),
              icon: const Icon(Icons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarhHeight,
          child: Column(
            children: [
              Image(
                image: AssetImage(TImages.deliveredEmailIllustration),
                width: THelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Text(
                TTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Text(
                email ?? '',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Text(
                TTexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () =>
                          controller.checkEmailVerificationStatus(),
                      child: const Text(TTexts.tContinue))),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              SizedBox(
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () => controller.sendEmailVerification(),
                      child: const Text(TTexts.resendEmail)))
            ],
          ),
        ),
      ),
    );
  }
}
