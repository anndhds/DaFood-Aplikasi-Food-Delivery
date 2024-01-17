import 'package:anandafood_app/core/app_export.dart';
import 'package:anandafood_app/presentation/two_screen/models/two_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the TwoScreen.
///
/// This class manages the state of the TwoScreen, including the
/// current twoModelObj
class TwoController extends GetxController {
  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  Rx<TwoModel> twoModelObj = TwoModel().obs;

  Rx<bool> isShowPassword = true.obs;

  Rx<bool> isShowPassword1 = true.obs;

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmpasswordController.dispose();
  }
}
