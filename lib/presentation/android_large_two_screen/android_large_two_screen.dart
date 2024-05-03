import 'dart:io';

import 'package:file_picker/file_picker.dart';

// import 'controller/android_large_two_dart';
import 'package:bb_app/core/app_export.dart';
import 'package:bb_app/core/utils/validation_functions.dart';
import 'package:bb_app/widgets/custom_checkbox_button.dart';
import 'package:bb_app/widgets/custom_elevated_button.dart';
import 'package:bb_app/widgets/custom_icon_button.dart';
import 'package:bb_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AndroidLargeTwoScreen extends StatefulWidget {
  AndroidLargeTwoScreen({Key? key}) : super(key: key);

  @override
  State<AndroidLargeTwoScreen> createState() => _AndroidLargeTwoScreenState();
}

class _AndroidLargeTwoScreenState extends State<AndroidLargeTwoScreen> {
  File? _filecampaign;
  File? _filebanner;
  File? _filebrandlogo;

  Future pickCampaignImage() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      setState(() {
        _filecampaign = File(result.files.single.path!);
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
          "Cancelled",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.redAccent,
      ));
    }
  }

  Future pickBannerImage() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      setState(() {
        _filebanner = File(result.files.single.path!);
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
          "Cancelled",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.redAccent,
      ));
    }
  }

  Future pickBrandLogo() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      setState(() {
        _filebrandlogo = File(result.files.single.path!);
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
          "Cancelled",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.redAccent,
      ));
    }
  }

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Rx<bool> isCheckbox = false.obs;
  Rx<bool> isCheckbox1 = false.obs;
  TextEditingController emailController = TextEditingController();

  TextEditingController enterpromotionlController = TextEditingController();

  TextEditingController enterfacebookliController = TextEditingController();

  TextEditingController enterinstagramlController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  TextEditingController enterbrandinstaController = TextEditingController();

  TextEditingController enternumberofblController = TextEditingController();

  TextEditingController cityController = TextEditingController();

  TextEditingController selecttargetgenController = TextEditingController();

  TextEditingController enterjobhashtagController = TextEditingController();

  TextEditingController dateController = TextEditingController();

  TextEditingController selecttasksController = TextEditingController();

  TextEditingController enterjobsubmissController = TextEditingController();

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
                                  margin: getMargin(top: 10),
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
                                                              "msg_brand_campaign_s"
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
                                            child: Text("lbl_title".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    color: Colors.black))),
                                        CustomTextFormField(
                                            controller: emailController,
                                            margin: getMargin(top: 15),
                                            textStyle:
                                                theme.textTheme.bodyLarge!,
                                            hintText: "msg_enter_your_email".tr,
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
                                                getPadding(left: 5, top: 29),
                                            child: Text("Promotion Link",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: theme
                                                    .textTheme.bodyMedium)),
                                        CustomTextFormField(
                                            controller:
                                                enterpromotionlController,
                                            margin: getMargin(top: 14),
                                            textStyle:
                                                theme.textTheme.bodyLarge!,
                                            hintText: "Enter Promotion Link".tr,
                                            hintStyle:
                                                theme.textTheme.bodyLarge!,
                                            textInputAction:
                                                TextInputAction.next),
                                        Padding(
                                            padding:
                                                getPadding(left: 5, top: 29),
                                            child: Text("lbl_facebook_link".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: theme
                                                    .textTheme.bodyMedium)),
                                        CustomTextFormField(
                                            controller:
                                                enterfacebookliController,
                                            margin: getMargin(top: 14),
                                            textStyle:
                                                theme.textTheme.bodyLarge!,
                                            hintText:
                                                "msg_enter_facebook_link".tr,
                                            hintStyle:
                                                theme.textTheme.bodyLarge!,
                                            textInputAction:
                                                TextInputAction.next),
                                        Padding(
                                            padding:
                                                getPadding(left: 5, top: 30),
                                            child: Text("lbl_instagram_link".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: theme
                                                    .textTheme.bodyMedium)),
                                        CustomTextFormField(
                                            controller:
                                                enterinstagramlController,
                                            margin: getMargin(top: 14),
                                            textStyle:
                                                theme.textTheme.bodyLarge!,
                                            hintText: "msg_enter_instagram".tr,
                                            hintStyle:
                                                theme.textTheme.bodyLarge!,
                                            textInputAction:
                                                TextInputAction.next)
                                      ])),
                              Container(
                                  margin: getMargin(top: 22),
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
                                            child: Text("lbl_brand_name".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: theme
                                                    .textTheme.bodyMedium)),
                                        CustomTextFormField(
                                            controller: nameController,
                                            margin: getMargin(top: 14),
                                            textStyle:
                                                theme.textTheme.bodyLarge!,
                                            hintText: "msg_enter_brand_name".tr,
                                            hintStyle:
                                                theme.textTheme.bodyLarge!,
                                            textInputAction:
                                                TextInputAction.next,
                                            validator: (value) {
                                              if (!isText(value)) {
                                                return "Please enter valid text";
                                              }
                                              return null;
                                            }),
                                        Padding(
                                            padding:
                                                getPadding(left: 5, top: 20),
                                            child: Text(
                                                "msg_brand_instagram".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: theme
                                                    .textTheme.bodyMedium)),
                                        CustomTextFormField(
                                            controller:
                                                enterbrandinstaController,
                                            margin: getMargin(top: 14),
                                            textStyle:
                                                theme.textTheme.bodyLarge!,
                                            hintText:
                                                "msg_enter_brand_instagram".tr,
                                            hintStyle:
                                                theme.textTheme.bodyLarge!,
                                            textInputAction:
                                                TextInputAction.next),
                                        Padding(
                                            padding:
                                                getPadding(left: 5, top: 20),
                                            child: Text("lbl_banner_image".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: theme
                                                    .textTheme.bodyMedium)),
                                        Padding(
                                            padding: getPadding(top: 10),
                                            child: InkWell(
                                              onTap: () {
                                                pickBannerImage();
                                              },
                                              // hoverColor: Colors.black87,
                                              child: Row(children: [
                                                Container(
                                                    // width:
                                                    //     getHorizontalSize(73),
                                                    padding: getPadding(
                                                        left: 4,
                                                        top: 3,
                                                        right: 4,
                                                        bottom: 3),
                                                    decoration: AppDecoration
                                                        .txtWhite
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .txtRoundedBorder2),
                                                    child: Text(
                                                        _filebanner == null
                                                            ? "lbl_choose_file"
                                                                .tr
                                                            : _filebanner!.path
                                                                .split('/')
                                                                .last,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: CustomTextStyles
                                                            .bodySmallGray50001)),
                                                if (_filebanner == null)
                                                  Container(
                                                      width: getHorizontalSize(
                                                          87),
                                                      margin: getMargin(
                                                          left: 7),
                                                      padding: getPadding(
                                                          left: 4,
                                                          top: 3,
                                                          right: 4,
                                                          bottom: 3),
                                                      decoration: AppDecoration
                                                          .txtGrey
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .txtRoundedBorder2),
                                                      child: Text(
                                                          "lbl_no_file_chosen"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: CustomTextStyles
                                                              .bodySmallGray50001))
                                                else
                                                  Text("")
                                              ]),
                                            )),
                                        Padding(
                                            padding: getPadding(top: 6),
                                            child: Divider(
                                                height: getVerticalSize(1),
                                                thickness: getVerticalSize(1),
                                                color: appTheme.gray500)),
                                        Padding(
                                            padding:
                                                getPadding(left: 5, top: 20),
                                            child: Text("lbl_brand_logo".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: theme
                                                    .textTheme.bodyMedium)),
                                        Padding(
                                            padding: getPadding(top: 9),
                                            child: InkWell(
                                              onTap: () {
                                                pickBrandLogo();
                                              },
                                              child: Row(children: [
                                                Container(
                                                    // width:
                                                    //     getHorizontalSize(73),
                                                    padding: getPadding(
                                                        left: 4,
                                                        top: 3,
                                                        right: 4,
                                                        bottom: 3),
                                                    decoration: AppDecoration
                                                        .txtWhite
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .txtRoundedBorder2),
                                                    child: Text(
                                                        _filebrandlogo == null
                                                            ? "lbl_choose_file"
                                                                .tr
                                                            : _filebrandlogo!
                                                                .path
                                                                .split('/')
                                                                .last,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: CustomTextStyles
                                                            .bodySmallGray50001)),
                                                if (_filebrandlogo == null)
                                                  Container(
                                                      width: getHorizontalSize(
                                                          87),
                                                      margin: getMargin(
                                                          left: 7),
                                                      padding: getPadding(
                                                          left: 4,
                                                          top: 3,
                                                          right: 4,
                                                          bottom: 3),
                                                      decoration: AppDecoration
                                                          .txtGrey
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .txtRoundedBorder2),
                                                      child: Text(
                                                          "lbl_no_file_chosen"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: CustomTextStyles
                                                              .bodySmallGray50001))
                                                else
                                                  Text("")
                                              ]),
                                            )),
                                        Padding(
                                            padding: getPadding(top: 6),
                                            child: Divider(
                                                height: getVerticalSize(1),
                                                thickness: getVerticalSize(1),
                                                color: appTheme.gray500))
                                      ])),
                              Container(
                                  margin: getMargin(top: 22),
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
                                                getPadding(left: 5, top: 1),
                                            child: Text(
                                                "msg_number_of_bloger".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: theme
                                                    .textTheme.bodyMedium)),
                                        CustomTextFormField(
                                            controller:
                                                enternumberofblController,
                                            margin: getMargin(top: 14),
                                            textStyle:
                                                theme.textTheme.bodyLarge!,
                                            hintText: "msg_enter_number_of".tr,
                                            hintStyle:
                                                theme.textTheme.bodyLarge!,
                                            textInputAction:
                                                TextInputAction.next,
                                            textInputType: TextInputType.number,
                                            validator: (value) {
                                              if (!isNumeric(value)) {
                                                return "Please enter valid number";
                                              }
                                              return null;
                                            }),
                                        Padding(
                                            padding:
                                                getPadding(left: 5, top: 30),
                                            child: Text("lbl_target_city".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: theme
                                                    .textTheme.bodyMedium)),
                                        CustomTextFormField(
                                            controller: cityController,
                                            margin: getMargin(top: 14),
                                            contentPadding:
                                                getPadding(left: 5, right: 5),
                                            textStyle:
                                                theme.textTheme.bodyLarge!,
                                            hintText:
                                                "msg_select_target_city".tr,
                                            hintStyle:
                                                theme.textTheme.bodyLarge!,
                                            textInputAction:
                                                TextInputAction.next),
                                        Padding(
                                            padding:
                                                getPadding(left: 5, top: 30),
                                            child: Text("lbl_target_genre".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: theme
                                                    .textTheme.bodyMedium)),
                                        CustomTextFormField(
                                            controller:
                                                selecttargetgenController,
                                            margin: getMargin(top: 14),
                                            contentPadding:
                                                getPadding(left: 5, right: 5),
                                            textStyle:
                                                theme.textTheme.bodyLarge!,
                                            hintText:
                                                "msg_select_target_genre".tr,
                                            hintStyle:
                                                theme.textTheme.bodyLarge!,
                                            textInputAction:
                                                TextInputAction.next)
                                      ])),
                              Container(
                                  margin: getMargin(top: 22),
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
                                                getPadding(left: 5, top: 1),
                                            child: Text("lbl_job_hashtag".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: theme
                                                    .textTheme.bodyMedium)),
                                        CustomTextFormField(
                                            controller:
                                                enterjobhashtagController,
                                            margin: getMargin(top: 14),
                                            textStyle:
                                                theme.textTheme.bodyLarge!,
                                            hintText:
                                                "msg_enter_job_hashtag".tr,
                                            hintStyle:
                                                theme.textTheme.bodyLarge!,
                                            textInputAction:
                                                TextInputAction.next),
                                        Padding(
                                            padding:
                                                getPadding(left: 5, top: 29),
                                            child: Text(
                                                "msg_job_submission_date".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: theme
                                                    .textTheme.bodyMedium)),
                                        CustomTextFormField(
                                            controller: dateController,
                                            margin: getMargin(top: 14),
                                            contentPadding:
                                                getPadding(left: 5, right: 5),
                                            textStyle:
                                                theme.textTheme.bodyLarge!,
                                            hintText: "lbl_2023_07_21".tr,
                                            hintStyle:
                                                theme.textTheme.bodyLarge!,
                                            textInputAction:
                                                TextInputAction.next),
                                        Padding(
                                            padding:
                                                getPadding(left: 5, top: 28),
                                            child: Text("lbl_task".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: theme
                                                    .textTheme.bodyMedium)),
                                        CustomTextFormField(
                                            controller: selecttasksController,
                                            margin: getMargin(top: 14),
                                            contentPadding:
                                                getPadding(left: 5, right: 5),
                                            textStyle:
                                                theme.textTheme.bodyLarge!,
                                            hintText: "lbl_select_tasks".tr,
                                            hintStyle:
                                                theme.textTheme.bodyLarge!,
                                            textInputAction:
                                                TextInputAction.next),
                                        Padding(
                                            padding:
                                                getPadding(left: 5, top: 29),
                                            child: Text(
                                                "msg_job_submission_text".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: theme
                                                    .textTheme.bodyMedium)),
                                        CustomTextFormField(
                                            controller:
                                                enterjobsubmissController,
                                            margin: getMargin(top: 14),
                                            textStyle:
                                                theme.textTheme.bodyLarge!,
                                            hintText:
                                                "msg_enter_job_submision".tr,
                                            hintStyle:
                                                theme.textTheme.bodyLarge!),
                                        Padding(
                                            padding:
                                                getPadding(left: 5, top: 30),
                                            child: Text("Campaign image",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: theme
                                                    .textTheme.bodyMedium)),
                                        Padding(
                                            padding: getPadding(top: 9),
                                            child: InkWell(
                                              onTap: () {
                                                pickCampaignImage();
                                              },
                                              child: Row(children: [
                                                Container(
                                                    // width:
                                                    //     getHorizontalSize(73),
                                                    padding: getPadding(
                                                        left: 4,
                                                        top: 3,
                                                        right: 4,
                                                        bottom: 3),
                                                    decoration: AppDecoration
                                                        .txtWhite
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .txtRoundedBorder2),
                                                    child: Text(
                                                        _filecampaign == null
                                                            ? "lbl_choose_file"
                                                                .tr
                                                            : _filecampaign!
                                                                .path
                                                                .split('/')
                                                                .last,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: CustomTextStyles
                                                            .bodySmallGray50001)),
                                                if (_filecampaign == null)
                                                  Container(
                                                      width: getHorizontalSize(
                                                          87),
                                                      margin: getMargin(
                                                          left: 7),
                                                      padding: getPadding(
                                                          left: 4,
                                                          top: 3,
                                                          right: 4,
                                                          bottom: 3),
                                                      decoration: AppDecoration
                                                          .txtGrey
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .txtRoundedBorder2),
                                                      child: Text(
                                                          "lbl_no_file_chosen"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: CustomTextStyles
                                                              .bodySmallGray50001))
                                                else
                                                  Text(""),
                                              ]),
                                            )),
                                        Padding(
                                            padding: getPadding(top: 6),
                                            child: Divider(
                                                height: getVerticalSize(1),
                                                thickness: getVerticalSize(1),
                                                color: appTheme.gray500))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 30),
                                  child: Row(children: [
                                    Obx(() => CustomCheckboxButton(
                                        text: "lbl_is_active".tr,
                                        iconSize: getHorizontalSize(24),
                                        value: isCheckbox.value,
                                        padding: getPadding(
                                            top: 1, bottom: 1, right: 5),
                                        textStyle:
                                            CustomTextStyles.bodyLargeBlack900,
                                        onChange: (value) {
                                          isCheckbox.value = value;
                                        })),
                                    // Opacity(
                                    //     opacity: 0.1,
                                    //     child: CustomIconButton(
                                    //         height: 24,
                                    //         width: 24,
                                    //         padding: getPadding(all: 5),
                                    //         decoration: IconButtonStyleHelper
                                    //             .fillGray50001,
                                    //         child: CustomImageView(
                                    //             svgPath:
                                    //                 ImageConstant.imgCheck1))),
                                    // Padding(
                                    //     padding: getPadding(
                                    //         left: 17, top: 1, bottom: 3),
                                    //     child: Text("lbl_is_active".tr,
                                    //         overflow: TextOverflow.ellipsis,
                                    //         textAlign: TextAlign.left,
                                    //         style: CustomTextStyles
                                    //             .bodyLargeBlack900)),
                                    Spacer(),
                                    Obx(() => CustomCheckboxButton(
                                        text: "lbl_is_prime".tr,
                                        iconSize: getHorizontalSize(24),
                                        value: isCheckbox1.value,
                                        padding: getPadding(
                                            top: 1, bottom: 1, right: 5),
                                        textStyle:
                                            CustomTextStyles.bodyLargeBlack900,
                                        onChange: (value) {
                                          isCheckbox1.value = value;
                                        }))
                                  ]))
                            ])))),
            bottomNavigationBar: CustomElevatedButton(
                text: "lbl_submit".tr,
                margin: getMargin(left: 16, right: 16, bottom: 26),
                buttonStyle: CustomButtonStyles.fillPrimary.copyWith(
                    fixedSize: MaterialStateProperty.all<Size>(
                        Size(double.maxFinite, getVerticalSize(52)))),
                buttonTextStyle: CustomTextStyles.bodyLargePrimaryContainer)));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] library to
  /// navigate to the previous screen in the navigation stack.
  onTapBtnArrowleft() {
    Get.back();
  }
}
