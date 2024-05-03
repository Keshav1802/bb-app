import 'controller/dashboard_three_controller.dart';
import 'package:bb_app/core/app_export.dart';
import 'package:bb_app/widgets/app_bar/appbar_iconbutton.dart';
import 'package:bb_app/widgets/app_bar/custom_app_bar.dart';
import 'package:bb_app/widgets/custom_drop_down.dart';
import 'package:bb_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class DashboardThreeScreen extends GetWidget<DashboardThreeController> {
  const DashboardThreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimary,
            appBar: CustomAppBar(
                height: getVerticalSize(70),
                leadingWidth: 58,
                leading: AppbarIconbutton(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 7, bottom: 7),
                    onTap: () {
                      onTapArrowleft2();
                    }),
                actions: [
                  CustomElevatedButton(
                      onTap: () {
                        Get.toNamed(AppRoutes.androidLargeSixScreen);
                      },
                      text: "lbl_edit".tr,
                      margin: getMargin(left: 16, top: 7, right: 16, bottom: 7),
                      rightIcon: Container(
                          margin: getMargin(left: 6),
                          child: CustomImageView(
                              svgPath: ImageConstant.imgEditing1)),
                      buttonStyle: CustomButtonStyles.fillBlack900TL16.copyWith(
                          fixedSize: MaterialStateProperty.all<Size>(Size(
                              getHorizontalSize(82), getVerticalSize(42)))),
                      buttonTextStyle:
                          CustomTextStyles.bodyLargePrimaryContainer)
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 7, right: 16, bottom: 7),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgRectangle122,
                          height: getSize(76),
                          width: getSize(76),
                          radius: BorderRadius.circular(getHorizontalSize(16))),
                      Padding(
                          padding: getPadding(top: 11),
                          child: Text("lbl_ross_adkins".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.titleLargeSemiBold)),
                      Padding(
                          padding: getPadding(top: 3),
                          child: Text("lbl_995546".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.bodyMediumPrimary)),
                      Padding(
                          padding: getPadding(top: 22),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("lbl_fashion".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: theme.textTheme.titleMedium),
                                      Padding(
                                          padding: getPadding(top: 6),
                                          child: Text("lbl_genre".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  theme.textTheme.bodyLarge)),
                                      Padding(
                                          padding: getPadding(top: 6),
                                          child: Text("lbl_cool".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .bodyLargeBlack900Light))
                                    ]),
                                Padding(
                                    padding: getPadding(left: 8),
                                    child: SizedBox(
                                        height: getVerticalSize(68),
                                        child: VerticalDivider(
                                            width: getHorizontalSize(1),
                                            thickness: getVerticalSize(1),
                                            endIndent: getHorizontalSize(18)))),
                                Padding(
                                    padding: getPadding(left: 8, bottom: 25),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_0".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  theme.textTheme.titleMedium),
                                          Padding(
                                              padding: getPadding(top: 5),
                                              child: Text("lbl_connections".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.bodyLarge))
                                        ])),
                                Spacer(),
                                // CustomDropDown(
                                //     width: getHorizontalSize(100),
                                //     icon: Container(
                                //         margin: getMargin(right: 3),
                                //         child: CustomImageView(
                                //             svgPath:
                                //                 ImageConstant.imgArrowdown)),
                                //     hintText: "lbl_posts".tr,
                                //     hintStyle: TextStyle(color: Colors.white),
                                //     margin: getMargin(bottom: 44),
                                //     textStyle: CustomTextStyles
                                //         .bodySmallPrimaryContainer10,
                                //     items: controller.dashboardThreeModelObj
                                //         .value.dropdownItemList.value,
                                //     filled: true,
                                //     fillColor: appTheme.black900,
                                //     contentPadding:
                                //         getPadding(left: 13, top: 6, bottom: 6),
                                //     onChanged: (value) {
                                //       controller.onSelected(value);
                                //     })
                              ])),
                      Padding(
                          padding: getPadding(top: 22, bottom: 5),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: appTheme.gray300))
                    ]))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] library to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleft2() {
    Get.back();
  }
}
