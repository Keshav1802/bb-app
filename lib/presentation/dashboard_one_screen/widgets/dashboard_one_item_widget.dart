import '../controller/dashboard_one_controller.dart';
import '../models/dashboard_one_item_model.dart';
import 'package:bb_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DashboardOneItemWidget extends StatelessWidget {
  DashboardOneItemWidget(
    this.dashboardOneItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DashboardOneItemModel dashboardOneItemModelObj;

  var controller = Get.find<DashboardOneController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getHorizontalSize(
        44,
      ),
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          width: getHorizontalSize(
            44,
          ),
          padding: getPadding(
            left: 15,
            top: 11,
            right: 15,
            bottom: 11,
          ),
          decoration: AppDecoration.txtPink.copyWith(
            borderRadius: BorderRadiusStyle.txtRoundedBorder14,
          ),
          child: Obx(
            () => Text(
              dashboardOneItemModelObj.itemscardcategoTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: CustomTextStyles.bodySmallOnPrimary,
            ),
          ),
        ),
      ),
    );
  }
}
