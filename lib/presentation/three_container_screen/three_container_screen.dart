import 'controller/three_container_controller.dart';
import 'package:anandafood_app/core/app_export.dart';
import 'package:anandafood_app/presentation/three_page/three_page.dart';
import 'package:anandafood_app/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class ThreeContainerScreen extends GetWidget<ThreeContainerController> {
  const ThreeContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.threePage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar: _buildBottomBar()));
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
}
