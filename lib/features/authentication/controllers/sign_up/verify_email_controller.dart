import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/loader/loaders.dart';
import 'package:t_store/data/repositories/repositories_authentication/authentication_repository.dart';
import 'package:t_store/features/authentication/screen/sign_up/succes_screen.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class VerifiyEmailController extends GetxController {
  static VerifiyEmailController get instance => Get.find();

  // send email whenever verify screen appears
  @override
  void onInit() {
    sendEmailVerification();
    setTimerForAutoRedirect();
    super.onInit();
  }

  sendEmailVerification() async {
    try {
      await AuthenticationRepository.instance.sendEmailVerification();
      TLoaders.succesSnackBar(
          title: 'Email Sent',
          message: 'Please check your Inbox and Verify your Email');
    } catch (e) {
      TLoaders.errroSnackBar(title: 'oh Snap', message: e.toString());
    }
  }

  setTimerForAutoRedirect() {
    Timer.periodic(
      const Duration(seconds: 1),
      (timer) async {
        await FirebaseAuth.instance.currentUser?.reload();
        final user = FirebaseAuth.instance.currentUser;
        if (user?.emailVerified ?? false) {
          timer.cancel();
          Get.off(
            () => SuccesScreen(
                image: TImages.sucessfullyRegisterAnimation,
                title: TTexts.yourAccountCreatedSubTitle,
                subTitle: TTexts.yourAccountCreatedSubTitle,
                onPressed: () =>
                    AuthenticationRepository.instance.screenRedirect()),
          );
        }
      },
    );
  }

  checkEmailVerificationStatus() async {
    final currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null && currentUser.emailVerified) {
      Get.off(
        () => SuccesScreen(
            image: TImages.sucessfullyRegisterAnimation,
            title: TTexts.yourAccountCreatedSubTitle,
            subTitle: TTexts.yourAccountCreatedSubTitle,
            onPressed: () =>
                AuthenticationRepository.instance.screenRedirect()),
      );
    }
  }
}
