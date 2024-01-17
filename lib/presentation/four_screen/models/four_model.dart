import '../../../core/app_export.dart';
import 'menucard_item_model.dart';

/// This class defines the variables used in the [four_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FourModel {
  Rx<List<MenucardItemModel>> menucardItemList = Rx([
    MenucardItemModel(
        burgerImage: ImageConstant.imgBurger1.obs,
        burgerName: "Burger Full Senyum".obs,
        category: "Breakfast".obs,
        ratingImage: ImageConstant.imgStar1.obs,
        rating: "4.8".obs,
        reviewCount: "(27 Review)".obs,
        price: "Rp 36.000".obs,
        pickupText: "Pick UP".obs),
    MenucardItemModel(
        burgerImage: ImageConstant.imgPizza1.obs,
        burgerName: "Pizza Sitik".obs,
        category: "Breakfast".obs,
        price: "Rp 50.000".obs,
        pickupText: "Pick UP".obs)
  ]);
}
