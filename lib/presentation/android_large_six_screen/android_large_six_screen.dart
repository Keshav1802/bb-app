import 'package:sizer/sizer.dart';

import '../../widgets/custom_checkbox_button.dart';
import 'controller/android_large_six_controller.dart';
import 'package:bb_app/core/app_export.dart';
import 'package:bb_app/core/utils/validation_functions.dart';
import 'package:bb_app/widgets/custom_elevated_button.dart';
import 'package:bb_app/widgets/custom_icon_button.dart';
import 'package:bb_app/widgets/custom_outlined_button.dart';
import 'package:bb_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AndroidLargeSixScreen extends GetWidget<AndroidLargeSixController> {
  AndroidLargeSixScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Rx<bool> isCheckbox1 = false.obs;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: theme.colorScheme.onPrimary,
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(left: 16, right: 16, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomIconButton(
                                  height: 42,
                                  width: 42,
                                  padding: getPadding(all: 8),
                                  onTap: () {
                                    onTapBtnArrowleft();
                                  },
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgArrowleft)),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      height: getVerticalSize(26),
                                      width: getHorizontalSize(260),
                                      margin: getMargin(top: 14),
                                      child: Stack(
                                          alignment: Alignment.topCenter,
                                          children: [
                                            CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgRectangle118,
                                                height: getVerticalSize(14),
                                                width: getHorizontalSize(260),
                                                alignment:
                                                    Alignment.bottomCenter),
                                            Align(
                                                alignment: Alignment.topCenter,
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      CustomIconButton(
                                                          height: 20,
                                                          width: 20,
                                                          padding: getPadding(
                                                              all: 5),
                                                          decoration:
                                                              IconButtonStyleHelper
                                                                  .fillGray900TL8,
                                                          child: CustomImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgPlus11)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 10, top: 1),
                                                          child: Text(
                                                              "msg_master_bloggers_s"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: CustomTextStyles
                                                                  .titleMediumPrimary))
                                                    ]))
                                          ]))),
                              Container(
                                  margin: getMargin(top: 26),
                                  padding: getPadding(
                                      left: 15, top: 17, right: 15, bottom: 17),
                                  decoration: AppDecoration.grey.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: getPadding(left: 5),
                                            child: Text("lbl_name".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: theme
                                                    .textTheme.bodyMedium)),
                                        CustomTextFormField(
                                            controller:
                                                controller.nameoneController,
                                            margin: getMargin(top: 16),
                                            contentPadding:
                                                getPadding(left: 5, right: 5),
                                            textStyle:
                                                theme.textTheme.bodyLarge!,
                                            hintText: "lbl_charu_garg".tr,
                                            hintStyle:
                                                theme.textTheme.bodyLarge!,
                                            textInputAction:
                                                TextInputAction.next),
                                        Padding(
                                            padding:
                                                getPadding(left: 5, top: 30),
                                            child: Text(
                                                "msg_instagram_user_name".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: theme
                                                    .textTheme.bodyMedium)),
                                        CustomTextFormField(
                                            controller: controller
                                                .instagramusernaController,
                                            margin: getMargin(top: 14),
                                            contentPadding:
                                                getPadding(left: 5, right: 5),
                                            textStyle:
                                                theme.textTheme.bodyLarge!,
                                            hintText: "lbl_charugarg06".tr,
                                            hintStyle:
                                                theme.textTheme.bodyLarge!,
                                            textInputAction:
                                                TextInputAction.next),
                                        Padding(
                                            padding:
                                                getPadding(left: 5, top: 28),
                                            child: Text("lbl_mobile_no".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: theme
                                                    .textTheme.bodyMedium)),
                                        CustomTextFormField(
                                            controller: controller
                                                .mobilenooneController,
                                            margin: getMargin(top: 14),
                                            contentPadding:
                                                getPadding(left: 5, right: 5),
                                            textStyle:
                                                theme.textTheme.bodyLarge!,
                                            hintText: "lbl_9568888824".tr,
                                            hintStyle:
                                                theme.textTheme.bodyLarge!,
                                            textInputAction:
                                                TextInputAction.next,
                                            textInputType: TextInputType.phone,
                                            validator: (value) {
                                              if (!isValidPhone(value)) {
                                                return "Please enter valid phone number";
                                              }
                                              return null;
                                            }),
                                        Padding(
                                            padding:
                                                getPadding(left: 5, top: 28),
                                            child: Text("lbl_email".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: theme
                                                    .textTheme.bodyMedium)),
                                        CustomTextFormField(
                                            controller:
                                                controller.emailoneController,
                                            margin: getMargin(top: 16),
                                            contentPadding:
                                                getPadding(left: 4, right: 4),
                                            textStyle:
                                                theme.textTheme.bodyLarge!,
                                            hintText:
                                                "msg_jdm34488_gmail_com".tr,
                                            hintStyle:
                                                theme.textTheme.bodyLarge!,
                                            textInputAction:
                                                TextInputAction.next,
                                            textInputType:
                                                TextInputType.emailAddress,
                                            validator: (value) {
                                              if (value == null ||
                                                  (!isValidEmail(value,
                                                      isRequired: true))) {
                                                return "Please enter valid email";
                                              }
                                              return null;
                                            }),
                                        Padding(
                                            padding:
                                                getPadding(left: 5, top: 30),
                                            child: Text("lbl_city".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: theme
                                                    .textTheme.bodyMedium)),
                                        CustomTextFormField(
                                            controller:
                                                controller.cityoneController,
                                            margin: getMargin(top: 14),
                                            contentPadding:
                                                getPadding(left: 5, right: 5),
                                            textStyle:
                                                theme.textTheme.bodyLarge!,
                                            hintText: "lbl_afjalgarh".tr,
                                            hintStyle:
                                                theme.textTheme.bodyLarge!,
                                            textInputAction:
                                                TextInputAction.next),
                                        Padding(
                                            padding:
                                                getPadding(left: 5, top: 29),
                                            child: Text("lbl_pincode".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: theme
                                                    .textTheme.bodyMedium)),
                                        CustomTextFormField(
                                            controller:
                                                controller.zipcodeController,
                                            margin: getMargin(top: 14),
                                            contentPadding:
                                                getPadding(left: 5, right: 5),
                                            textStyle:
                                                theme.textTheme.bodyLarge!,
                                            hintText: "lbl_251001".tr,
                                            hintStyle:
                                                theme.textTheme.bodyLarge!,
                                            textInputAction:
                                                TextInputAction.next),
                                        Padding(
                                            padding:
                                                getPadding(left: 5, top: 29),
                                            child: Text("lbl_address".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: theme
                                                    .textTheme.bodyMedium)),
                                        CustomTextFormField(
                                            controller:
                                                controller.addressoneController,
                                            margin: getMargin(top: 15),
                                            contentPadding:
                                                getPadding(left: 5, right: 5),
                                            textStyle:
                                                theme.textTheme.bodyLarge!,
                                            hintText: "msg_648_1_new_mandi".tr,
                                            hintStyle:
                                                theme.textTheme.bodyLarge!,
                                            textInputAction:
                                                TextInputAction.next)
                                      ])),
                              Container(
                                  margin: getMargin(top: 30),
                                  padding: getPadding(
                                      left: 15, top: 17, right: 15, bottom: 17),
                                  decoration: AppDecoration.grey.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                            padding:
                                                getPadding(left: 5, top: 2),
                                            child: Text("lbl_hsl_code".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: theme
                                                    .textTheme.bodyMedium)),
                                        CustomTextFormField(
                                            controller:
                                                controller.zipcodeoneController,
                                            margin: getMargin(top: 14),
                                            contentPadding:
                                                getPadding(left: 5, right: 5),
                                            textStyle:
                                                theme.textTheme.bodyLarge!,
                                            hintText: "lbl_290795".tr,
                                            hintStyle:
                                                theme.textTheme.bodyLarge!,
                                            textInputAction:
                                                TextInputAction.next)
                                      ])),
                              Container(
                                  margin: getMargin(top: 30),
                                  padding: getPadding(
                                      left: 15, top: 17, right: 15, bottom: 17),
                                  decoration: AppDecoration.grey.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                            padding:
                                                getPadding(left: 5, top: 11),
                                            child: Text("lbl_instagram_link".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: theme
                                                    .textTheme.bodyMedium)),
                                        CustomTextFormField(
                                            controller:
                                                controller.weburlController,
                                            margin: getMargin(top: 11),
                                            contentPadding:
                                                getPadding(left: 4, right: 4),
                                            textStyle:
                                                theme.textTheme.bodyLarge!,
                                            hintText: "msg_https_instagr".tr,
                                            hintStyle:
                                                theme.textTheme.bodyLarge!,
                                            textInputAction:
                                                TextInputAction.next),
                                        Padding(
                                            padding:
                                                getPadding(left: 5, top: 19),
                                            child: Text("lbl_facebook_link".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: theme
                                                    .textTheme.bodyMedium)),
                                        CustomTextFormField(
                                            controller:
                                                controller.weburloneController,
                                            margin: getMargin(top: 14),
                                            contentPadding:
                                                getPadding(left: 4, right: 4),
                                            textStyle:
                                                theme.textTheme.bodyLarge!,
                                            hintText: "msg_https_instagr".tr,
                                            hintStyle:
                                                theme.textTheme.bodyLarge!,
                                            textInputAction:
                                                TextInputAction.next),
                                        Padding(
                                            padding:
                                                getPadding(left: 5, top: 29),
                                            child: Text("lbl_youtube_link".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: theme
                                                    .textTheme.bodyMedium)),
                                        CustomTextFormField(
                                            controller:
                                                controller.weburltwoController,
                                            margin: getMargin(top: 15),
                                            contentPadding:
                                                getPadding(left: 4, right: 4),
                                            textStyle:
                                                theme.textTheme.bodyLarge!,
                                            hintText: "msg_https_instagr".tr,
                                            hintStyle:
                                                theme.textTheme.bodyLarge!,
                                            textInputAction:
                                                TextInputAction.next),
                                        Padding(
                                            padding:
                                                getPadding(left: 5, top: 30),
                                            child: Text("lbl_blog_url".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: theme
                                                    .textTheme.bodyMedium)),
                                        CustomTextFormField(
                                            controller:
                                                controller.blogurloneController,
                                            margin: getMargin(top: 13),
                                            contentPadding:
                                                getPadding(left: 5, right: 5),
                                            textStyle:
                                                theme.textTheme.bodyLarge!,
                                            hintText: "lbl_https_url".tr,
                                            hintStyle:
                                                theme.textTheme.bodyLarge!,
                                            textInputAction:
                                                TextInputAction.next)
                                      ])),
                              Container(
                                  margin: getMargin(top: 30),
                                  padding: getPadding(
                                      left: 15, top: 17, right: 15, bottom: 17),
                                  decoration: AppDecoration.grey.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: getPadding(left: 5),
                                            child: Text("lbl_about".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: theme
                                                    .textTheme.bodyMedium)),
                                        CustomTextFormField(
                                            controller:
                                                controller.aboutoneController,
                                            margin: getMargin(top: 15),
                                            contentPadding:
                                                getPadding(left: 5, right: 5),
                                            textStyle:
                                                theme.textTheme.bodyLarge!,
                                            hintText: "msg_a_girl_trying_to".tr,
                                            hintStyle:
                                                theme.textTheme.bodyLarge!,
                                            textInputAction:
                                                TextInputAction.next),
                                        Padding(
                                            padding:
                                                getPadding(left: 5, top: 29),
                                            child: Text("lbl_genre".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: theme
                                                    .textTheme.bodyMedium)),
                                        CustomTextFormField(
                                            controller:
                                                controller.genreoneController,
                                            margin: getMargin(top: 15),
                                            contentPadding:
                                                getPadding(left: 5, right: 5),
                                            textStyle:
                                                theme.textTheme.bodyLarge!,
                                            hintText: "lbl_lifestyle".tr,
                                            hintStyle:
                                                theme.textTheme.bodyLarge!,
                                            textInputAction:
                                                TextInputAction.next)
                                      ])),
                              Container(
                                  margin: getMargin(top: 30),
                                  padding: getPadding(
                                      left: 15, top: 18, right: 15, bottom: 18),
                                  decoration: AppDecoration.grey.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: getPadding(left: 5),
                                            child: Text(
                                                "lbl_view_membership".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: theme
                                                    .textTheme.bodyMedium)),
                                        CustomTextFormField(
                                            controller:
                                                controller.addresstwoController,
                                            margin: getMargin(top: 13),
                                            contentPadding:
                                                getPadding(left: 5, right: 5),
                                            textStyle:
                                                theme.textTheme.bodyLarge!,
                                            hintText: "msg_648_1_new_mandi".tr,
                                            hintStyle:
                                                theme.textTheme.bodyLarge!,
                                            textInputAction:
                                                TextInputAction.next),
                                        Padding(
                                            padding:
                                                getPadding(left: 5, top: 30),
                                            child: Text(
                                                "msg_add_or_renew_membership"
                                                    .tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: theme
                                                    .textTheme.bodyMedium)),
                                        CustomTextFormField(
                                            controller: controller
                                                .addorrenewmembeController,
                                            margin: getMargin(top: 16),
                                            contentPadding:
                                                getPadding(left: 5, right: 5),
                                            textStyle:
                                                theme.textTheme.bodyLarge!,
                                            hintText:
                                                "msg_select_membership".tr,
                                            hintStyle:
                                                theme.textTheme.bodyLarge!,
                                            textInputAction:
                                                TextInputAction.next),
                                        Padding(
                                            padding:
                                                getPadding(left: 5, top: 30),
                                            child: Text(
                                                "msg_extend_membership".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: theme
                                                    .textTheme.bodyMedium)),
                                        CustomTextFormField(
                                            controller: controller
                                                .addressthreeController,
                                            margin: getMargin(top: 13),
                                            contentPadding:
                                                getPadding(left: 5, right: 5),
                                            textStyle:
                                                theme.textTheme.bodyLarge!,
                                            hintText: "msg_648_1_new_mandi".tr,
                                            hintStyle:
                                                theme.textTheme.bodyLarge!)
                                      ])),
                              SizedBox(
                                height: 2.h,
                              ),
                              Obx(() => CustomCheckboxButton(
                                  text: "lbl_is_prime".tr,
                                  iconSize: getHorizontalSize(24),
                                  value: isCheckbox1.value,
                                  padding:
                                      getPadding(top: 1, bottom: 1, right: 5),
                                  textStyle: CustomTextStyles.bodyLargeBlack900,
                                  onChange: (value) {
                                    isCheckbox1.value = value;
                                  })),
                              SizedBox(
                                height: 2.h,
                              )
                            ])))),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 16, bottom: 30),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  CustomElevatedButton(
                      text: "lbl_save".tr,
                      buttonStyle: CustomButtonStyles.fillPrimary.copyWith(
                          fixedSize: MaterialStateProperty.all<Size>(Size(
                              getHorizontalSize(160), getVerticalSize(52)))),
                      buttonTextStyle:
                          CustomTextStyles.bodyLargePrimaryContainer),
                  CustomOutlinedButton(
                      onTap: () {
                        Get.back();
                      },
                      text: "lbl_cancel".tr,
                      margin: getMargin(left: 8),
                      buttonStyle: CustomButtonStyles.outlinePrimary.copyWith(
                          fixedSize: MaterialStateProperty.all<Size>(Size(
                              getHorizontalSize(160), getVerticalSize(52)))),
                      buttonTextStyle: CustomTextStyles.bodyLargePrimary)
                ]))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] library to
  /// navigate to the previous screen in the navigation stack.
  onTapBtnArrowleft() {
    Get.back();
  }
}
