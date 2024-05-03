import '../controller/dashboard_one_controller.dart';
import '../models/dashboard_one1_item_model.dart';
import 'package:bb_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DashboardOne1ItemWidget extends StatelessWidget {
  DashboardOne1ItemWidget(
    this.dashboardOne1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DashboardOne1ItemModel dashboardOne1ItemModelObj;

  var controller = Get.find<DashboardOneController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: CustomImageView(
        imagePath: ImageConstant.imgRectangle11680x79,
        height: getVerticalSize(
          80,
        ),
        width: getHorizontalSize(
          79,
        ),
        radius: BorderRadius.circular(
          getHorizontalSize(
            10,
          ),
        ),
      ),
    );
  }
}
