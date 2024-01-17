import 'controller/one_controller.dart';
import 'package:anandafood_app/core/app_export.dart';
import 'package:anandafood_app/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class OneScreen extends GetWidget<OneController> {
  const OneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 37.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerRight,
                      child: Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: EdgeInsets.only(right: 32.h),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusStyle.roundedBorder2),
                          child: Container(
                              height: 5.v,
                              width: 285.h,
                              decoration: AppDecoration.outlinePrimary.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder2),
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: SizedBox(
                                        width: 285.h, child: Divider())),
                                Align(
                                    alignment: Alignment.center,
                                    child: SizedBox(
                                        width: 285.h,
                                        child: Divider(
                                            color: theme
                                                .colorScheme.errorContainer)))
                              ])))),
                  SizedBox(height: 21.v),
                  SizedBox(
                      height: 88.v,
                      width: 107.h,
                      child: Stack(alignment: Alignment.bottomRight, children: [
                        Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                                padding:
                                    EdgeInsets.only(top: 22.v, right: 29.h),
                                child: Text("lbl_da".tr,
                                    style: theme.textTheme.titleLarge))),
                        Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                                padding: EdgeInsets.only(bottom: 9.v),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text("lbl_f".tr,
                                          style: CustomTextStyles
                                              .headlineLargeRed30001),
                                      CustomImageView(
                                          imagePath: ImageConstant.imgEllipse1,
                                          height: 20.adaptSize,
                                          width: 20.adaptSize,
                                          radius: BorderRadius.circular(10.h),
                                          margin: EdgeInsets.only(
                                              top: 9.v, bottom: 7.v)),
                                      CustomImageView(
                                          imagePath: ImageConstant.imgEllipse1,
                                          height: 20.adaptSize,
                                          width: 20.adaptSize,
                                          radius: BorderRadius.circular(10.h),
                                          margin: EdgeInsets.only(
                                              top: 9.v, bottom: 7.v)),
                                      Text("lbl_d".tr,
                                          style: theme.textTheme.headlineLarge)
                                    ]))),
                        CustomImageView(
                            imagePath: ImageConstant.imgRectangle1,
                            height: 88.v,
                            width: 45.h,
                            alignment: Alignment.centerLeft)
                      ])),
                  SizedBox(height: 16.v),
                  _buildSeventyOne(),
                  SizedBox(height: 38.v),
                  Text("msg_order_from_choosen".tr,
                      style: CustomTextStyles.headlineSmallPrimary),
                  SizedBox(height: 24.v),
                  Container(
                      width: 289.h,
                      margin: EdgeInsets.only(left: 44.h, right: 40.h),
                      child: Text("msg_get_all_your_loved".tr,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.titleLargePrimaryMedium)),
                  SizedBox(height: 64.v),
                  CustomOutlinedButton(
                      text: "lbl_get_started".tr,
                      margin: EdgeInsets.only(left: 31.h, right: 19.h),
                      onPressed: () {
                        onTapGetStarted();
                      }),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildSeventyOne() {
    return SizedBox(
        height: 279.v,
        width: 373.h,
        child: Stack(alignment: Alignment.topCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgSalad1,
              height: 96.v,
              width: 87.h,
              alignment: Alignment.topLeft),
          CustomImageView(
              imagePath: ImageConstant.imgCookG72caae2021280,
              height: 259.v,
              width: 262.h,
              alignment: Alignment.topCenter),
          CustomImageView(
              imagePath: ImageConstant.imgSteak1,
              height: 78.adaptSize,
              width: 78.adaptSize,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 26.v)),
          CustomImageView(
              imagePath: ImageConstant.imgBurger1,
              height: 70.adaptSize,
              width: 70.adaptSize,
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(left: 10.h, bottom: 53.v)),
          CustomImageView(
              imagePath: ImageConstant.imgBurrito1,
              height: 94.adaptSize,
              width: 94.adaptSize,
              alignment: Alignment.bottomRight)
        ]));
  }

  /// Navigates to the twoScreen when the action is triggered.
  onTapGetStarted() {
    Get.toNamed(
      AppRoutes.twoScreen,
    );
  }
}
