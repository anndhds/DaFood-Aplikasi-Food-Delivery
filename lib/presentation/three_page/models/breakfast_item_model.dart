import '../../../core/app_export.dart';

/// This class is used in the [breakfast_item_widget] screen.
class BreakfastItemModel {
  BreakfastItemModel({
    this.breakfast,
    this.breakfastImage,
    this.id,
  }) {
    breakfast = breakfast ?? Rx("Breakfast");
    breakfastImage = breakfastImage ?? Rx(ImageConstant.imgPizza1);
    id = id ?? Rx("");
  }

  Rx<String>? breakfast;

  Rx<String>? breakfastImage;

  Rx<String>? id;
}
