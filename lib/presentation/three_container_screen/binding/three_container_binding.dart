import '../controller/three_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ThreeContainerScreen.
///
/// This class ensures that the ThreeContainerController is created when the
/// ThreeContainerScreen is first loaded.
class ThreeContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ThreeContainerController());
  }
}
