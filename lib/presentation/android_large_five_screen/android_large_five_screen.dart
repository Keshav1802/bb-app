import '../android_large_five_screen/widgets/listrectangle14_item_widget.dart';
import 'controller/android_large_five_controller.dart';
import 'models/listrectangle14_item_model.dart';
import 'package:bb_app/core/app_export.dart';
import 'package:bb_app/widgets/app_bar/appbar_iconbutton.dart';
import 'package:bb_app/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:bb_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class AndroidLargeFiveScreen extends GetWidget<AndroidLargeFiveController> {
  const AndroidLargeFiveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimary,
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                leadingWidth: 58,
                leading: AppbarIconbutton(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 7, bottom: 7),
                    onTap: () {
                      onTapArrowleft();
                    }),
                actions: [
                  AppbarIconbutton1(
                      onTap: () {
                        Get.toNamed(AppRoutes.androidLargeTwoScreen);
                      },
                      svgPath: ImageConstant.imgPlus11,
                      margin: getMargin(left: 16, top: 7, right: 7)),
                  // AppbarIconbutton1(
                  //     svgPath: ImageConstant.imgIcons24filter,
                  //     margin: getMargin(left: 30, top: 7, right: 23))
                ]),
            body: Padding(
                padding: getPadding(left: 16, top: 7, right: 16),
                child: Obx(() => ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return Padding(
                          padding: getPadding(top: 11.0, bottom: 11.0),
                          child: SizedBox(
                              width: getHorizontalSize(328),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: appTheme.gray300)));
                    },
                    itemCount: controller.androidLargeFiveModelObj.value
                        .listrectangle14ItemList.value.length,
                    itemBuilder: (context, index) {
                      Listrectangle14ItemModel model = controller
                          .androidLargeFiveModelObj
                          .value
                          .listrectangle14ItemList
                          .value[index];
                      return Listrectangle14ItemWidget(model);
                    })))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] library to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleft() {
    Get.back();
  }
}
