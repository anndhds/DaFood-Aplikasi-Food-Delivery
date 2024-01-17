import '../../../core/app_export.dart';
import 'breakfast_item_model.dart';

/// This class defines the variables used in the [three_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ThreeModel {
  Rx<List<BreakfastItemModel>> breakfastItemList = Rx([
    BreakfastItemModel(
        breakfast: "Breakfast".obs,
        breakfastImage: ImageConstant.imgPizza1.obs),
    BreakfastItemModel(
        breakfast: "Desert".obs, breakfastImage: ImageConstant.imgCookies1.obs)
  ]);
}
