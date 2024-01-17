import 'controller/five_controller.dart';
import 'package:anandafood_app/core/app_export.dart';
import 'package:anandafood_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:anandafood_app/widgets/app_bar/custom_app_bar.dart';
import 'package:anandafood_app/widgets/custom_outlined_button.dart';
import 'package:anandafood_app/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';

class FiveScreen extends GetWidget<FiveController> {
  const FiveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 10.v),
                    child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 23.h),
                        child: Column(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle262,
                              height: 189.v,
                              width: 296.h,
                              radius: BorderRadius.circular(15.h)),
                          SizedBox(height: 33.v),
                          _buildFortyEight(),
                          SizedBox(height: 11.v),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                  padding: EdgeInsets.only(right: 53.h),
                                  child: Text("lbl_chicken_abc".tr,
                                      style: CustomTextStyles
                                          .headlineLargeOnSecondaryContainerMedium))),
                          SizedBox(height: 20.v),
                          _buildSixtyTwo(),
                          SizedBox(height: 7.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Row(children: [
                                    Text("lbl_4_8".tr,
                                        style:
                                            CustomTextStyles.titleLargePrimary),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 6.h, top: 4.v, bottom: 4.v),
                                        child:
                                            CustomRatingBar(initialRating: 4))
                                  ]))),
                          SizedBox(height: 6.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 19.h),
                                  child: Text("lbl_rp_56_000".tr,
                                      style: CustomTextStyles
                                          .titleMediumPrimary))),
                          SizedBox(height: 24.v),
                          Container(
                              width: 313.h,
                              margin: EdgeInsets.only(left: 17.h, right: 13.h),
                              child: Text("msg_ayam_abc_adalah".tr,
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles
                                      .labelLargeOnSecondaryContainer)),
                          SizedBox(height: 23.v),
                          CustomOutlinedButton(
                              text: "lbl_order".tr,
                              margin: EdgeInsets.only(left: 20.h),
                              buttonStyle: CustomButtonStyles
                                  .outlineOnSecondaryContainerTL10,
                              alignment: Alignment.centerRight),
                          SizedBox(height: 30.v),
                          _buildFour(),
                          SizedBox(height: 60.v),
                          Container(
                              height: 7.v,
                              width: 166.h,
                              decoration: BoxDecoration(
                                  color: appTheme.blueGray600,
                                  borderRadius: BorderRadius.circular(3.h)))
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 55.v,
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgHiconLinear,
            margin: EdgeInsets.fromLTRB(22.h, 10.v, 333.h, 10.v),
            onTap: () {
              onTapHiconLinear();
            }));
  }

  /// Section Widget
  Widget _buildFortyEight() {
    return Align(
        alignment: Alignment.centerRight,
        child: Padding(
            padding: EdgeInsets.only(left: 26.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: 67.h,
                      margin: EdgeInsets.only(bottom: 17.v),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgStar130x30,
                                height: 30.adaptSize,
                                width: 30.adaptSize),
                            Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.v),
                                child: Text("lbl_4_8".tr,
                                    style: CustomTextStyles.titleLargePrimary))
                          ])),
                  Spacer(flex: 53),
                  Padding(
                      padding: EdgeInsets.only(bottom: 3.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(children: [
                              _buildFiftyNine(
                                  clock: ImageConstant.imgUserYellow800),
                              Padding(
                                  padding: EdgeInsets.only(left: 5.h, top: 2.v),
                                  child: Text("lbl_free".tr,
                                      style: theme.textTheme.bodyLarge))
                            ]),
                            SizedBox(height: 3.v),
                            Align(
                                alignment: Alignment.centerRight,
                                child: Opacity(
                                    opacity: 0.64,
                                    child: Text("lbl_delivery".tr,
                                        style: theme.textTheme.bodySmall)))
                          ])),
                  Spacer(flex: 46),
                  Padding(
                      padding: EdgeInsets.only(top: 5.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(children: [
                              _buildFiftyNine(clock: ImageConstant.imgClock),
                              Padding(
                                  padding: EdgeInsets.only(left: 5.h, top: 2.v),
                                  child: Text("lbl_25".tr,
                                      style: theme.textTheme.bodyLarge))
                            ]),
                            SizedBox(height: 2.v),
                            Align(
                                alignment: Alignment.centerRight,
                                child: Opacity(
                                    opacity: 0.64,
                                    child: Text("lbl_minutes".tr,
                                        style: theme.textTheme.bodySmall)))
                          ]))
                ])));
  }

  /// Section Widget
  Widget _buildSixtyTwo() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 84.v,
                  width: 210.h,
                  margin: EdgeInsets.only(bottom: 12.v),
                  child: Stack(alignment: Alignment.center, children: [
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                            padding: EdgeInsets.only(right: 53.h, bottom: 10.v),
                            child: Text("lbl_3_2km".tr,
                                style: CustomTextStyles
                                    .bodySmallMontserratBluegray900b5))),
                    Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                            width: 210.h,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgRectangle254,
                                      height: 84.v,
                                      width: 99.h,
                                      radius: BorderRadius.circular(15.h)),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: 19.v, bottom: 44.v),
                                      child: Text("lbl_babel_resto".tr,
                                          style: CustomTextStyles
                                              .titleMediumOnSecondaryContainerMedium))
                                ])))
                  ])),
              Padding(
                  padding: EdgeInsets.only(top: 25.v),
                  child: Column(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgUserDeepOrange300,
                        height: 41.v,
                        width: 43.h,
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(right: 13.h)),
                    SizedBox(height: 6.v),
                    SizedBox(
                        width: 77.h,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgVector,
                                  height: 14.v,
                                  width: 15.h,
                                  margin: EdgeInsets.only(bottom: 8.v)),
                              Padding(
                                  padding: EdgeInsets.only(top: 3.v),
                                  child: Text("lbl_1".tr,
                                      style: CustomTextStyles
                                          .titleMediumOnSecondaryContainer)),
                              CustomImageView(
                                  imagePath: ImageConstant.imgPlus,
                                  height: 14.v,
                                  width: 15.h,
                                  margin: EdgeInsets.only(bottom: 8.v))
                            ]))
                  ]))
            ]));
  }

  /// Section Widget
  Widget _buildFour() {
    return Padding(
        padding: EdgeInsets.only(left: 11.h, right: 7.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
              width: 91.h,
              padding: EdgeInsets.symmetric(vertical: 12.v),
              decoration: AppDecoration.outlineOnSecondaryContainer5
                  .copyWith(borderRadius: BorderRadiusStyle.circleBorder10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(top: 2.v, bottom: 1.v),
                        child: Text("lbl_1".tr,
                            style: CustomTextStyles.titleLargePrimary)),
                    CustomImageView(
                        imagePath: ImageConstant.imgPlusRed300,
                        height: 17.v,
                        width: 18.h,
                        margin: EdgeInsets.only(bottom: 11.v))
                  ])),
          CustomOutlinedButton(
              height: 56.v,
              width: 200.h,
              text: "msg_add_to_my_chart".tr,
              buttonStyle: CustomButtonStyles.outlineOnSecondaryContainerTL101,
              buttonTextStyle:
                  CustomTextStyles.titleMediumOnSecondaryContainer17)
        ]));
  }

  /// Common widget
  Widget _buildFiftyNine({required String clock}) {
    return SizedBox(
        height: 24.v,
        width: 23.h,
        child: Stack(alignment: Alignment.bottomRight, children: [
          Opacity(
              opacity: 0.2,
              child: CustomImageView(
                  imagePath: ImageConstant.imgUser,
                  height: 24.v,
                  width: 18.h,
                  alignment: Alignment.centerLeft)),
          CustomImageView(
              imagePath: clock,
              height: 20.adaptSize,
              width: 20.adaptSize,
              alignment: Alignment.bottomRight)
        ]));
  }

  /// Navigates to the fourScreen when the action is triggered.
  onTapHiconLinear() {
    Get.toNamed(
      AppRoutes.fourScreen,
    );
  }
}
