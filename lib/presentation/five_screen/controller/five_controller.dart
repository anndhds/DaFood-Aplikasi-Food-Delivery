import 'package:anandafood_app/core/app_export.dart';
import 'package:anandafood_app/presentation/five_screen/models/five_model.dart';

/// A controller class for the FiveScreen.
///
/// This class manages the state of the FiveScreen, including the
/// current fiveModelObj
class FiveController extends GetxController {
  Rx<FiveModel> fiveModelObj = FiveModel().obs;
}
