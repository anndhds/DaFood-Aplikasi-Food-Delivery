import '../three_page/widgets/breakfast_item_widget.dart';
import 'controller/three_controller.dart';
import 'models/breakfast_item_model.dart';
import 'models/three_model.dart';
import 'package:anandafood_app/core/app_export.dart';
import 'package:anandafood_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:anandafood_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:anandafood_app/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:anandafood_app/widgets/app_bar/appbar_title.dart';
import 'package:anandafood_app/widgets/app_bar/appbar_title_circleimage.dart';
import 'package:anandafood_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:anandafood_app/widgets/app_bar/custom_app_bar.dart';
import 'package:anandafood_app/widgets/custom_icon_button.dart';
import 'package:anandafood_app/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ThreePage extends StatelessWidget {
  ThreePage({Key? key}) : super(key: key);

  ThreeController controller = Get.put(ThreeController(ThreeModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 17.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 32.h),
                          child: Text("lbl_hello_seine".tr,
                              style: theme.textTheme.titleLarge)),
                      SizedBox(height: 11.v),
                      Padding(
                          padding: EdgeInsets.only(left: 27.h),
                          child: Text("msg_choose_your_food".tr,
                              style: CustomTextStyles.headlineSmallPrimary_1)),
                      SizedBox(height: 14.v),
                      _buildTwentyFour(),
                      SizedBox(height: 12.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: EdgeInsets.only(right: 91.h),
                              child: Text("lbl_today_s_menu".tr,
                                  style: theme.textTheme.headlineSmall))),
                      SizedBox(height: 6.v),
                      _buildSixteen(),
                      SizedBox(height: 22.v),
                      _buildTwentyOne(),
                      SizedBox(height: 2.v),
                      _buildBreakfast()
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 107.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgRectangle1,
            margin: EdgeInsets.only(right: 62.h)),
        title: Container(
            margin: EdgeInsets.only(left: 27.h, top: 22.v, bottom: 9.v),
            decoration: AppDecoration.column3,
            child: Column(children: [
              AppbarSubtitleOne(
                  text: "lbl_da".tr,
                  margin: EdgeInsets.only(left: 25.h, right: 29.h)),
              AppbarSubtitle(
                  text: "lbl_f".tr, margin: EdgeInsets.only(right: 62.h)),
              AppbarTitle(
                  text: "lbl_d".tr, margin: EdgeInsets.only(left: 58.h)),
              AppbarTitleCircleimage(
                  imagePath: ImageConstant.imgEllipse1,
                  margin: EdgeInsets.only(left: 18.h, right: 42.h)),
              SizedBox(height: 7.v),
              AppbarTitleCircleimage(
                  imagePath: ImageConstant.imgEllipse1,
                  margin: EdgeInsets.only(left: 38.h, right: 22.h))
            ])),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgEllipse12,
              margin: EdgeInsets.only(left: 35.h, top: 23.v, right: 35.h))
        ]);
  }

  /// Section Widget
  Widget _buildTwentyFour() {
    return Align(
        alignment: Alignment.centerRight,
        child: Padding(
            padding: EdgeInsets.only(left: 27.h, right: 7.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Expanded(
                  child: CustomSearchView(
                      controller: controller.searchController,
                      hintText: "lbl_search".tr)),
              Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: CustomIconButton(
                      height: 37.v,
                      width: 44.h,
                      padding: EdgeInsets.all(8.h),
                      decoration:
                          IconButtonStyleHelper.outlineOnSecondaryContainer,
                      child: CustomImageView(
                          imagePath: ImageConstant.imgMegaphone)))
            ])));
  }

  /// Section Widget
  Widget _buildSixteen() {
    return Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
            height: 143.v,
            width: 351.h,
            child: Stack(alignment: Alignment.bottomRight, children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                      onTap: () {
                        onTapDiskonUp();
                      },
                      child: Container(
                          margin: EdgeInsets.only(right: 21.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 6.h, vertical: 10.v),
                          decoration: AppDecoration.outlineOnSecondaryContainer
                              .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder10),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 8.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 23.h),
                                    child: Row(children: [
                                      Padding(
                                          padding: EdgeInsets.only(top: 1.v),
                                          child: Text("lbl_diskon_up".tr,
                                              style: theme
                                                  .textTheme.headlineSmall)),
                                      Padding(
                                          padding: EdgeInsets.only(left: 8.h),
                                          child: Text("lbl_to".tr,
                                              style: theme
                                                  .textTheme.headlineSmall))
                                    ])),
                                SizedBox(height: 3.v),
                                Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgRamen1,
                                          height: 70.v,
                                          width: 83.h,
                                          margin: EdgeInsets.only(top: 4.v)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 10.h, bottom: 25.v),
                                          child: Text("lbl_85".tr,
                                              style: theme
                                                  .textTheme.displayMedium))
                                    ])
                              ])))),
              CustomImageView(
                  imagePath: ImageConstant.imgArrowRight,
                  height: 15.v,
                  width: 10.h,
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.only(right: 12.h, bottom: 10.v)),
              CustomImageView(
                  imagePath: ImageConstant.imgBurger1,
                  height: 121.v,
                  width: 145.h,
                  alignment: Alignment.bottomRight)
            ])));
  }

  /// Section Widget
  Widget _buildTwentyOne() {
    return Padding(
        padding: EdgeInsets.only(left: 12.h, right: 35.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("lbl_categories".tr,
              style: CustomTextStyles.headlineLargeOnSecondaryContainer),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 8.v),
              child: Text("lbl_view_all".tr,
                  style: CustomTextStyles.titleMediumOnSecondaryContainer16))
        ]));
  }

  /// Section Widget
  Widget _buildBreakfast() {
    return SizedBox(
        height: 132.v,
        child: Obx(() => ListView.separated(
            padding: EdgeInsets.only(left: 9.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 5.h);
            },
            itemCount:
                controller.threeModelObj.value.breakfastItemList.value.length,
            itemBuilder: (context, index) {
              BreakfastItemModel model =
                  controller.threeModelObj.value.breakfastItemList.value[index];
              return BreakfastItemWidget(model, onTapBreakfast: () {
                onTapBreakfast();
              });
            })));
  }

  /// Navigates to the fourScreen when the action is triggered.
  onTapBreakfast() {
    Get.toNamed(AppRoutes.fourScreen);
  }

  /// Navigates to the fourScreen when the action is triggered.
  onTapDiskonUp() {
    Get.toNamed(
      AppRoutes.fourScreen,
    );
  }
}
