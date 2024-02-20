import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:iconsax/iconsax.dart";
import "package:t_store/features/authentication/controllers/sign_up/signup_controller.dart";
import "package:t_store/features/authentication/screen/sign_up/sign_up_widget/sign_up_tc_checkbox.dart";
import "package:t_store/features/authentication/screen/sign_up/verify_email.dart";
import "package:t_store/utils/constants/colors.dart";
import "package:t_store/utils/constants/sizes.dart";
import "package:t_store/utils/constants/text_strings.dart";
import "package:t_store/utils/helpers/helper_functions.dart";
import "package:t_store/utils/validators/validation.dart";

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    final controller = Get.put(SignupController());
    return Form(
        key: controller.signupFormKey,
        child: Column(
          children: [
            Row(
              children: [
                //name
                Expanded(
                  child: TextFormField(
                    expands: false,
                    controller: controller.firstName,
                    validator: (value) =>
                        TValidator.validateEmptyText('First name', value),
                    decoration: const InputDecoration(
                      labelText: TTexts.firstName,
                      prefixIcon: Icon(Iconsax.user),
                    ),
                  ),
                ),
                const SizedBox(
                  width: TSizes.spaceBtwInputFields,
                ),
                Expanded(
                  child: TextFormField(
                    expands: false,
                    validator: (value) =>
                        TValidator.validateEmptyText('Last name', value),
                    controller: controller.lastName,
                    decoration: const InputDecoration(
                        labelText: TTexts.lastName,
                        prefixIcon: Icon(Iconsax.user)),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: TSizes.spaceBtwInputFields,
            ),

            ///user name
            TextFormField(
              expands: false,
              validator: (value) =>
                  TValidator.validateEmptyText('User name', value),
              controller: controller.username,
              decoration: const InputDecoration(
                  labelText: TTexts.username, prefixIcon: Icon(Iconsax.user)),
            ),
            const SizedBox(
              height: TSizes.spaceBtwInputFields,
            ),
            //email
            TextFormField(
              expands: false,
              validator: (value) => TValidator.validateEmail(value),
              controller: controller.email,
              decoration: const InputDecoration(
                  labelText: TTexts.email,
                  prefixIcon: Icon(Icons.email_outlined)),
            ),
            const SizedBox(
              height: TSizes.spaceBtwInputFields,
            ),
            //phone
            TextFormField(
              expands: false,
              controller: controller.phoneNumber,
              validator: (value) => TValidator.validatePhoneNumber(value),
              decoration: const InputDecoration(
                  labelText: TTexts.phoneNo, prefixIcon: Icon(Icons.phone)),
            ),
            const SizedBox(
              height: TSizes.spaceBtwInputFields,
            ),
            //password
            TextFormField(
              expands: false,
              controller: controller.password,
              validator: (value) => TValidator.validatePassword(value),
              decoration: const InputDecoration(
                  labelText: TTexts.password,
                  prefixIcon: Icon(Iconsax.password_check),
                  suffixIcon: Icon(Iconsax.eye_slash)),
            ),
            const SizedBox(
              height: TSizes.spaceBtwInputFields,
            ),
            const TermConditionCheckBox(),
            const SizedBox(
              height: TSizes.spaceBtwSections / 2,
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => controller.signup(),
                    child: const Text(TTexts.createAccount))),
          ],
        ));
  }
}
