import 'package:anandafood_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppbarTitleCircleimage extends StatelessWidget {
  AppbarTitleCircleimage({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadiusStyle.circleBorder10,
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomImageView(
          imagePath: imagePath,
          height: 20.adaptSize,
          width: 20.adaptSize,
          fit: BoxFit.contain,
          radius: BorderRadius.circular(
            10.h,
          ),
        ),
      ),
    );
  }
}
