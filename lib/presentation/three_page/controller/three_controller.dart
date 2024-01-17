import 'package:anandafood_app/core/app_export.dart';
import 'package:anandafood_app/presentation/three_page/models/three_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ThreePage.
///
/// This class manages the state of the ThreePage, including the
/// current threeModelObj
class ThreeController extends GetxController {
  ThreeController(this.threeModelObj);

  TextEditingController searchController = TextEditingController();

  Rx<ThreeModel> threeModelObj;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
