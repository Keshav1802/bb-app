import '../controller/dashboard_controller.dart';
import '../models/dashboard1_item_model.dart';
import 'package:bb_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Dashboard1ItemWidget extends StatelessWidget {
  Dashboard1ItemWidget(
    this.dashboard1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Dashboard1ItemModel dashboard1ItemModelObj;

  var controller = Get.find<DashboardController>();

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.1,
      child: Container(
        padding: getPadding(
          all: 12,
        ),
        decoration: AppDecoration.fill1.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: getHorizontalSize(
                  34,
                ),
                padding: getPadding(
                  left: 2,
                  top: 1,
                  right: 2,
                  bottom: 1,
                ),
                decoration: AppDecoration.txtBlack.copyWith(
                  borderRadius: BorderRadiusStyle.txtRoundedBorder2,
                ),
                child: Text(
                  "lbl_prime".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: CustomTextStyles.bodySmallBlack900,
                ),
              ),
            ),
            Opacity(
              opacity: 0.5,
              child: CustomImageView(
                svgPath: ImageConstant.imgSlacklogosvg150px,
                height: getVerticalSize(
                  24,
                ),
                width: getHorizontalSize(
                  97,
                ),
                margin: getMargin(
                  top: 39,
                  bottom: 54,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
