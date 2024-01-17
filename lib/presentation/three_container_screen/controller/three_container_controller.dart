import 'package:anandafood_app/core/app_export.dart';
import 'package:anandafood_app/presentation/three_container_screen/models/three_container_model.dart';

/// A controller class for the ThreeContainerScreen.
///
/// This class manages the state of the ThreeContainerScreen, including the
/// current threeContainerModelObj
class ThreeContainerController extends GetxController {
  Rx<ThreeContainerModel> threeContainerModelObj = ThreeContainerModel().obs;
}
