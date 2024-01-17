import 'controller/two_controller.dart';
import 'package:anandafood_app/core/app_export.dart';
import 'package:anandafood_app/core/utils/validation_functions.dart';
import 'package:anandafood_app/widgets/custom_icon_button.dart';
import 'package:anandafood_app/widgets/custom_outlined_button.dart';
import 'package:anandafood_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class TwoScreen extends GetWidget<TwoController> {
  TwoScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(children: [
                      SizedBox(height: 48.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Column(children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 32.h),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding:
                                              EdgeInsets.only(bottom: 62.v),
                                          child: CustomIconButton(
                                              height: 35.adaptSize,
                                              width: 35.adaptSize,
                                              padding: EdgeInsets.all(5.h),
                                              onTap: () {
                                                onTapBtnHiconLinear();
                                              },
                                              child: CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgHiconLinear))),
                                      Container(
                                          height: 88.v,
                                          width: 107.h,
                                          margin: EdgeInsets.only(
                                              left: 76.h, top: 9.v),
                                          child: Stack(
                                              alignment: Alignment.bottomRight,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.topRight,
                                                    child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 22.v,
                                                                right: 29.h),
                                                        child: Text("lbl_da".tr,
                                                            style: theme
                                                                .textTheme
                                                                .titleLarge))),
                                                Align(
                                                    alignment:
                                                        Alignment.bottomRight,
                                                    child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                bottom: 9.v),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: [
                                                              Text("lbl_f".tr,
                                                                  style: CustomTextStyles
                                                                      .headlineLargeRed30001),
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgEllipse1,
                                                                  height: 20
                                                                      .adaptSize,
                                                                  width: 20
                                                                      .adaptSize,
                                                                  radius: BorderRadius
                                                                      .circular(
                                                                          10.h),
                                                                  margin: EdgeInsets.only(
                                                                      top: 9.v,
                                                                      bottom:
                                                                          7.v)),
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgEllipse1,
                                                                  height: 20
                                                                      .adaptSize,
                                                                  width: 20
                                                                      .adaptSize,
                                                                  radius: BorderRadius
                                                                      .circular(
                                                                          10.h),
                                                                  margin: EdgeInsets.only(
                                                                      top: 9.v,
                                                                      bottom:
                                                                          7.v)),
                                                              Text("lbl_d".tr,
                                                                  style: theme
                                                                      .textTheme
                                                                      .headlineLarge)
                                                            ]))),
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgRectangle1,
                                                    height: 88.v,
                                                    width: 45.h,
                                                    alignment:
                                                        Alignment.centerLeft)
                                              ]))
                                    ]))),
                        SizedBox(height: 3.v),
                        Text("lbl_sign_up".tr,
                            style: CustomTextStyles
                                .displayMediumOnSecondaryContainer),
                        SizedBox(height: 8.v),
                        Text("msg_please_sign_up_to".tr,
                            style: CustomTextStyles
                                .titleSmallOnSecondaryContainer),
                        SizedBox(height: 14.v),
                        Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 19.h, vertical: 24.v),
                            decoration: AppDecoration.outlineRedA.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder30),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(height: 26.v),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.only(left: 28.h),
                                          child: Text("lbl_name".tr,
                                              style: theme
                                                  .textTheme.titleMedium))),
                                  SizedBox(height: 8.v),
                                  _buildName(),
                                  SizedBox(height: 7.v),
                                  _buildSeventyTwo(),
                                  SizedBox(height: 10.v),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.only(left: 28.h),
                                          child: Text("lbl_password".tr,
                                              style: theme
                                                  .textTheme.titleMedium))),
                                  SizedBox(height: 5.v),
                                  _buildPassword(),
                                  SizedBox(height: 7.v),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.only(left: 28.h),
                                          child: Text("msg_confirm_password".tr,
                                              style: theme
                                                  .textTheme.titleMedium))),
                                  SizedBox(height: 5.v),
                                  _buildConfirmpassword(),
                                  SizedBox(height: 28.v),
                                  _buildCreateNewAccount(),
                                  SizedBox(height: 27.v),
                                  Text("lbl_or".tr,
                                      style: CustomTextStyles
                                          .titleLargeOnPrimaryContainer),
                                  SizedBox(height: 14.v),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CustomIconButton(
                                            height: 42.v,
                                            width: 43.h,
                                            padding: EdgeInsets.all(6.h),
                                            decoration: IconButtonStyleHelper
                                                .outlinePrimary,
                                            child: CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgGoogle)),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 27.h),
                                            child: CustomIconButton(
                                                height: 42.adaptSize,
                                                width: 42.adaptSize,
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgEllipse2))),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 25.h),
                                            child: CustomIconButton(
                                                height: 42.adaptSize,
                                                width: 42.adaptSize,
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgEllipse3)))
                                      ])
                                ])),
                        SizedBox(height: 58.v),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                                height: 10.v,
                                width: 166.h,
                                margin: EdgeInsets.only(right: 99.h),
                                decoration: BoxDecoration(
                                    color: appTheme.blueGray600,
                                    borderRadius: BorderRadius.circular(5.h))))
                      ])))
                    ])))));
  }

  /// Section Widget
  Widget _buildName() {
    return Padding(
        padding: EdgeInsets.only(left: 21.h, right: 7.h),
        child: CustomTextFormField(
            controller: controller.nameController,
            hintText: "lbl_ananda".tr,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 16.h, vertical: 17.v)));
  }

  /// Section Widget
  Widget _buildEleven() {
    return Align(
        alignment: Alignment.center,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 9.h),
                  child:
                      Text("lbl_email".tr, style: theme.textTheme.titleMedium)),
              SizedBox(height: 8.v),
              CustomTextFormField(
                  controller: controller.emailController,
                  hintText: "msg_aphrodite_gmail_com".tr,
                  textInputType: TextInputType.emailAddress,
                  suffix: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 16.v, 27.h, 17.v),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgHiconLinearTick,
                          height: 17.v,
                          width: 24.h)),
                  suffixConstraints: BoxConstraints(maxHeight: 51.v),
                  validator: (value) {
                    if (value == null ||
                        (!isValidEmail(value, isRequired: true))) {
                      return "err_msg_please_enter_valid_email".tr;
                    }
                    return null;
                  })
            ]));
  }

  /// Section Widget
  Widget _buildSeventyTwo() {
    return SizedBox(
        height: 81.v,
        width: 322.h,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgHiconLinearOnsecondarycontainer,
              height: 24.adaptSize,
              width: 24.adaptSize,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 6.v, right: 21.h)),
          _buildEleven()
        ]));
  }

  /// Section Widget
  Widget _buildPassword() {
    return Padding(
        padding: EdgeInsets.only(left: 21.h, right: 7.h),
        child: Obx(() => CustomTextFormField(
            controller: controller.passwordController,
            hintText: "lbl".tr,
            textInputType: TextInputType.visiblePassword,
            suffix: InkWell(
                onTap: () {
                  controller.isShowPassword.value =
                      !controller.isShowPassword.value;
                },
                child: Container(
                    margin: EdgeInsets.fromLTRB(30.h, 16.v, 27.h, 10.v),
                    child: CustomImageView(
                        imagePath: ImageConstant.imgHiconOutlineHide,
                        height: 24.adaptSize,
                        width: 24.adaptSize))),
            suffixConstraints: BoxConstraints(maxHeight: 51.v),
            validator: (value) {
              if (value == null ||
                  (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            obscureText: controller.isShowPassword.value)));
  }

  /// Section Widget
  Widget _buildConfirmpassword() {
    return Padding(
        padding: EdgeInsets.only(left: 21.h, right: 7.h),
        child: Obx(() => CustomTextFormField(
            controller: controller.confirmpasswordController,
            hintText: "lbl".tr,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            suffix: InkWell(
                onTap: () {
                  controller.isShowPassword1.value =
                      !controller.isShowPassword1.value;
                },
                child: Container(
                    margin: EdgeInsets.fromLTRB(30.h, 13.v, 25.h, 13.v),
                    child: CustomImageView(
                        imagePath: ImageConstant.imgHiconOutlineHide,
                        height: 24.adaptSize,
                        width: 24.adaptSize))),
            suffixConstraints: BoxConstraints(maxHeight: 51.v),
            validator: (value) {
              if (value == null ||
                  (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            obscureText: controller.isShowPassword1.value)));
  }

  /// Section Widget
  Widget _buildCreateNewAccount() {
    return CustomOutlinedButton(
        text: "msg_create_new_account".tr,
        margin: EdgeInsets.only(left: 26.h),
        onPressed: () {
          ThreeScreen();
        },
        alignment: Alignment.centerRight);
  }

  /// Navigates to the oneScreen when the action is triggered.
  onTapBtnHiconLinear() {
    Get.toNamed(
      AppRoutes.oneScreen,
    );
  }

  /// Navigates to the threeContainerScreen when the action is triggered.
  ThreeScreen() {
    Get.toNamed(
      AppRoutes.threeContainerScreen,
    );
  }
}
