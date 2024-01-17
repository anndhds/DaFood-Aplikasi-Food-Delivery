import '../controller/three_controller.dart';
import '../models/breakfast_item_model.dart';
import 'package:anandafood_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BreakfastItemWidget extends StatelessWidget {
  BreakfastItemWidget(
    this.breakfastItemModelObj, {
    Key? key,
    this.onTapBreakfast,
  }) : super(
          key: key,
        );

  BreakfastItemModel breakfastItemModelObj;

  var controller = Get.find<ThreeController>();

  VoidCallback? onTapBreakfast;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 113.h,
      child: GestureDetector(
        onTap: () {
          onTapBreakfast!.call();
        },
        child: Container(
          margin: EdgeInsets.only(bottom: 1.v),
          padding: EdgeInsets.symmetric(
            horizontal: 13.h,
            vertical: 6.v,
          ),
          decoration: AppDecoration.outlineOnSecondaryContainer1.copyWith(
            borderRadius: BorderRadiusStyle.customBorderTL20,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 13.v),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Obx(
                  () => Text(
                    breakfastItemModelObj.breakfast!.value,
                    style: CustomTextStyles.labelMediumSemiBold,
                  ),
                ),
              ),
              SizedBox(height: 5.v),
              Obx(
                () => CustomImageView(
                  imagePath: breakfastItemModelObj.breakfastImage!.value,
                  height: 85.adaptSize,
                  width: 85.adaptSize,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
