import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/popups/full_screen_loader.dart';

class SignupController extends GetxController {

  static SignupController get instance => Get.find();

  final email =TextEditingController();
  final lastName = TextEditingController();
  final username = TextEditingController();
  final password = TextEditingController();
  final firstName = TextEditingController();
  final phoneNumber= TextEditingController();
  GlobalKey <FormState> signupFormKey = GlobalKey<FormState>();


  @override
  Future<void> signup() async {
    try {
      TFullScreenLoader.openLoadingDialog("We are processing your information", TImages.docerAnimation);

      final isConnected = await Network
    }
    catch (e) {

    }finally{

    }

  }
}