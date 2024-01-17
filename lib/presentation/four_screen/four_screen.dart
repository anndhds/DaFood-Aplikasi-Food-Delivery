import '../four_screen/widgets/menucard_item_widget.dart';
import 'controller/four_controller.dart';
import 'models/menucard_item_model.dart';
import 'package:anandafood_app/core/app_export.dart';
import 'package:anandafood_app/presentation/three_page/three_page.dart';
import 'package:anandafood_app/widgets/custom_bottom_bar.dart';
import 'package:anandafood_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class FourScreen extends GetWidget<FourController> {
  const FourScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 12.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 23.v),
                      Container(
                          height: 88.v,
                          width: 107.h,
                          margin: EdgeInsets.only(left: 20.h),
                          child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Align(
                                    alignment: Alignment.topRight,
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            top: 22.v, right: 29.h),
                                        child: Text("lbl_da".tr,
                                            style:
                                                theme.textTheme.titleLarge))),
                                Align(
                                    alignment: Alignment.bottomRight,
                                    child: Padding(
                                        padding: EdgeInsets.only(bottom: 9.v),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text("lbl_f".tr,
                                                  style: CustomTextStyles
                                                      .headlineLargeRed30001),
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgEllipse1,
                                                  height: 20.adaptSize,
                                                  width: 20.adaptSize,
                                                  radius: BorderRadius.circular(
                                                      10.h),
                                                  margin: EdgeInsets.only(
                                                      top: 9.v, bottom: 7.v)),
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgEllipse1,
                                                  height: 20.adaptSize,
                                                  width: 20.adaptSize,
                                                  radius: BorderRadius.circular(
                                                      10.h),
                                                  margin: EdgeInsets.only(
                                                      top: 9.v, bottom: 7.v)),
                                              Text("lbl_d".tr,
                                                  style: theme
                                                      .textTheme.headlineLarge)
                                            ]))),
                                CustomImageView(
                                    imagePath: ImageConstant.imgRectangle1,
                                    height: 88.v,
                                    width: 45.h,
                                    alignment: Alignment.centerLeft)
                              ])),
                      SizedBox(height: 32.v),
                      Padding(
                          padding: EdgeInsets.only(left: 14.h),
                          child: Row(children: [
                            CustomIconButton(
                                height: 35.adaptSize,
                                width: 35.adaptSize,
                                padding: EdgeInsets.all(5.h),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgHiconLinear)),
                            Padding(
                                padding: EdgeInsets.only(left: 22.h, top: 5.v),
                                child: Text("lbl_breakfast".tr,
                                    style:
                                        CustomTextStyles.headlineSmallMedium))
                          ])),
                      SizedBox(height: 22.v),
                      _buildMenuCard()
                    ])),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  Widget _buildMenuCard() {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Obx(() => ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 23.v);
                },
                itemCount:
                    controller.fourModelObj.value.menucardItemList.value.length,
                itemBuilder: (context, index) {
                  MenucardItemModel model = controller
                      .fourModelObj.value.menucardItemList.value[index];
                  return MenucardItemWidget(model, onTapMenuCard: () {
                    onTapMenuCard();
                  });
                }))));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.threePage;
      case BottomBarEnum.Notification:
        return "/";
      case BottomBarEnum.Mycart:
        return "/";
      case BottomBarEnum.Me:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.threePage:
        return ThreePage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the fiveScreen when the action is triggered.
  onTapMenuCard() {
    Get.toNamed(
      AppRoutes.fiveScreen,
    );
  }
}
