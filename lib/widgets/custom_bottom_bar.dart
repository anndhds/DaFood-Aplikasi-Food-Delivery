import 'package:anandafood_app/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({
    Key? key,
    this.onChanged,
  }) : super(
          key: key,
        );

  RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgHome,
      activeIcon: ImageConstant.imgHome,
      title: "lbl_home".tr,
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavNotification,
      activeIcon: ImageConstant.imgNavNotification,
      title: "lbl_notification".tr,
      type: BottomBarEnum.Notification,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavMyCart,
      activeIcon: ImageConstant.imgNavMyCart,
      title: "lbl_my_cart".tr,
      type: BottomBarEnum.Mycart,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavMe,
      activeIcon: ImageConstant.imgNavMe,
      title: "lbl_me".tr,
      type: BottomBarEnum.Me,
    )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 143.v,
      decoration: BoxDecoration(
        color: appTheme.gray100,
        borderRadius: BorderRadius.circular(
          20.h,
        ),
      ),
      child: Obx(
        () => BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedFontSize: 0,
          elevation: 0,
          currentIndex: selectedIndex.value,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            return BottomNavigationBarItem(
              icon: SizedBox(
                height: 57.v,
                width: 56.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        margin: EdgeInsets.fromLTRB(26.h, 3.v, 14.h, 38.v),
                        decoration: AppDecoration.fillRedA.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder10,
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 4.h,
                            vertical: 1.v,
                          ),
                          child: Text(
                            "lbl_5".tr,
                            style: CustomTextStyles
                                .labelMediumOnSecondaryContainer,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: bottomMenuList[index].icon,
                            height: 43.v,
                            width: 42.h,
                            color: appTheme.blueGray800,
                            margin: EdgeInsets.only(
                              left: 4.h,
                              right: 10.h,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 1.v),
                            child: Text(
                              bottomMenuList[index].title ?? "",
                              style: theme.textTheme.labelMedium!.copyWith(
                                color: theme.colorScheme.primary.withOpacity(1),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              activeIcon: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: bottomMenuList[index].activeIcon,
                    height: 31.v,
                    width: 30.h,
                    color: appTheme.teal200,
                    radius: BorderRadius.circular(
                      2.h,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.v),
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      style: theme.textTheme.labelMedium!.copyWith(
                        color: theme.colorScheme.primary.withOpacity(1),
                      ),
                    ),
                  ),
                ],
              ),
              label: '',
            );
          }),
          onTap: (index) {
            selectedIndex.value = index;
            onChanged?.call(bottomMenuList[index].type);
          },
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
  Notification,
  Mycart,
  Me,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
