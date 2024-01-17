import 'package:anandafood_app/core/app_export.dart';
import 'package:anandafood_app/presentation/four_screen/models/four_model.dart';

/// A controller class for the FourScreen.
///
/// This class manages the state of the FourScreen, including the
/// current fourModelObj
class FourController extends GetxController {
  Rx<FourModel> fourModelObj = FourModel().obs;
}
