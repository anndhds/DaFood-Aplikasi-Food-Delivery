import '../controller/four_controller.dart';
import '../models/menucard_item_model.dart';
import 'package:anandafood_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MenucardItemWidget extends StatelessWidget {
  MenucardItemWidget(
    this.menucardItemModelObj, {
    Key? key,
    this.onTapMenuCard,
  }) : super(
          key: key,
        );

  MenucardItemModel menucardItemModelObj;

  var controller = Get.find<FourController>();

  VoidCallback? onTapMenuCard;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapMenuCard!.call();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            height: 84.v,
            width: 99.h,
            padding: EdgeInsets.symmetric(
              horizontal: 14.h,
              vertical: 6.v,
            ),
            decoration: AppDecoration.outlineOnSecondaryContainer1.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder15,
            ),
            child: Obx(
              () => CustomImageView(
                imagePath: menucardItemModelObj.burgerImage!.value,
                height: 65.adaptSize,
                width: 65.adaptSize,
                alignment: Alignment.bottomRight,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              top: 14.v,
              bottom: 4.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    menucardItemModelObj.burgerName!.value,
                    style: CustomTextStyles.titleSmallPrimary,
                  ),
                ),
                SizedBox(height: 7.v),
                Container(
                  width: 80.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 14.h,
                    vertical: 1.v,
                  ),
                  decoration: AppDecoration.fillYellow.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder10,
                  ),
                  child: Obx(
                    () => Text(
                      menucardItemModelObj.category!.value,
                      style: CustomTextStyles.labelMediumOrange500,
                    ),
                  ),
                ),
                SizedBox(height: 6.v),
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Row(
                    children: [
                      Obx(
                        () => CustomImageView(
                          imagePath: menucardItemModelObj.ratingImage!.value,
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Obx(
                          () => Text(
                            menucardItemModelObj.rating!.value,
                            style: CustomTextStyles.labelMediumOrange700,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 4.h,
                          top: 4.v,
                        ),
                        child: Obx(
                          () => Text(
                            menucardItemModelObj.reviewCount!.value,
                            style: theme.textTheme.labelSmall,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 12.v,
              bottom: 6.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath:
                      ImageConstant.imgHiconLinearOnsecondarycontainer22x22,
                  height: 22.adaptSize,
                  width: 22.adaptSize,
                  margin: EdgeInsets.only(left: 18.h),
                ),
                SizedBox(height: 10.v),
                Obx(
                  () => Text(
                    menucardItemModelObj.price!.value,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                SizedBox(height: 4.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 7.h),
                    child: Obx(
                      () => Text(
                        menucardItemModelObj.pickupText!.value,
                        style: CustomTextStyles.labelMediumPrimary,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
