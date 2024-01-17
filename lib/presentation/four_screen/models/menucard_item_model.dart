import '../../../core/app_export.dart';

/// This class is used in the [menucard_item_widget] screen.
class MenucardItemModel {
  MenucardItemModel({
    this.burgerImage,
    this.burgerName,
    this.category,
    this.ratingImage,
    this.rating,
    this.reviewCount,
    this.price,
    this.pickupText,
    this.id,
  }) {
    burgerImage = burgerImage ?? Rx(ImageConstant.imgBurger1);
    burgerName = burgerName ?? Rx("Burger Full Senyum");
    category = category ?? Rx("Breakfast");
    ratingImage = ratingImage ?? Rx(ImageConstant.imgStar1);
    rating = rating ?? Rx("4.8");
    reviewCount = reviewCount ?? Rx("(27 Review)");
    price = price ?? Rx("Rp 36.000");
    pickupText = pickupText ?? Rx("Pick UP");
    id = id ?? Rx("");
  }

  Rx<String>? burgerImage;

  Rx<String>? burgerName;

  Rx<String>? category;

  Rx<String>? ratingImage;

  Rx<String>? rating;

  Rx<String>? reviewCount;

  Rx<String>? price;

  Rx<String>? pickupText;

  Rx<String>? id;
}
