import 'package:bb_app/presentation/dashboard_screen/dashboard_screen.dart';

import 'controller/android_large_one_controller.dart';
import 'package:bb_app/core/app_export.dart';
import 'package:bb_app/core/utils/validation_functions.dart';
import 'package:bb_app/widgets/custom_elevated_button.dart';
import 'package:bb_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AndroidLargeOneScreen extends GetWidget<AndroidLargeOneController> {
  AndroidLargeOneScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.onPrimary,
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: getVerticalSize(
                      400,
                    ),
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            // margin: EdgeInsets.only(top: 20),
                            padding: getPadding(
                              left: 17,
                            ),
                            child: Text(
                              "lbl_welcome_back".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.headlineSmallBlack900,
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle117,
                          color: Color(0xffEC1B55),
                          height: getVerticalSize(
                            359,
                          ),
                          width: getHorizontalSize(
                            360,
                          ),
                          radius: BorderRadius.circular(
                            getHorizontalSize(
                              0,
                            ),
                          ),
                          alignment: Alignment.topCenter,
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            padding: getPadding(
                              left: 112,
                              top: 90,
                              right: 112,
                              bottom: 90,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusStyle.roundedBorder119,
                              // image: DecorationImage(
                              //   image: AssetImage(
                              //     ImageConstant.imgGroup1,
                              //   ),
                              //   fit: BoxFit.cover,
                              // ),
                            ),
                            child: CustomImageView(
                              imagePath: ImageConstant.img436782001,
                              height: getVerticalSize(
                                110,
                              ),
                              width: getHorizontalSize(
                                135,
                              ),
                              margin: getMargin(
                                top: 57,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 17,
                        top: 7,
                      ),
                      child: Text(
                        "msg_please_log_in_to".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.bodyMediumGray600,
                      ),
                    ),
                  ),
                  CustomTextFormField(
                    controller: controller.emailController,
                    margin: getMargin(
                      left: 16,
                      top: 18,
                      right: 16,
                    ),
                    contentPadding: getPadding(
                      left: 12,
                      top: 16,
                      right: 12,
                      bottom: 16,
                    ),
                    textStyle: theme.textTheme.bodyLarge!,
                    hintText: "msg_enter_your_email".tr,
                    hintStyle: theme.textTheme.bodyLarge!,
                    textInputAction: TextInputAction.next,
                    textInputType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null ||
                          (!isValidEmail(value, isRequired: true))) {
                        return "Please enter valid email";
                      }
                      return null;
                    },
                    filled: true,
                    fillColor: theme.colorScheme.onPrimary,
                    defaultBorderDecoration:
                        TextFormFieldStyleHelper.outlineGray300,
                    enabledBorderDecoration:
                        TextFormFieldStyleHelper.outlineGray300,
                    focusedBorderDecoration:
                        TextFormFieldStyleHelper.outlineGray300,
                    disabledBorderDecoration:
                        TextFormFieldStyleHelper.outlineGray300,
                  ),
                  Obx(
                    () => CustomTextFormField(
                      controller: controller.passwordController,
                      margin: getMargin(
                        left: 16,
                        top: 10,
                        right: 16,
                      ),
                      contentPadding: getPadding(
                        left: 20,
                        top: 16,
                        bottom: 16,
                      ),
                      textStyle: theme.textTheme.bodyLarge!,
                      hintText: "lbl_password".tr,
                      hintStyle: theme.textTheme.bodyLarge!,
                      textInputType: TextInputType.visiblePassword,
                      suffix: InkWell(
                        onTap: () {
                          controller.isShowPassword.value =
                              !controller.isShowPassword.value;
                        },
                        child: Container(
                          margin: getMargin(
                            left: 30,
                            top: 14,
                            right: 22,
                            bottom: 14,
                          ),
                          child: CustomImageView(
                            svgPath: controller.isShowPassword.value
                                ? ImageConstant.imgIcons24Eye1
                                : ImageConstant.imgIcons24Eye1,
                          ),
                        ),
                      ),
                      suffixConstraints: BoxConstraints(
                        maxHeight: getVerticalSize(
                          52,
                        ),
                      ),
                      validator: (value) {
                        if (value == null
                            // (!isValidPassword(value, isRequired: true))
                        ) {
                          return "Please enter valid password";
                        }
                        return null;
                      },
                      obscureText: controller.isShowPassword.value,
                      filled: true,
                      fillColor: theme.colorScheme.onPrimary,
                      defaultBorderDecoration:
                          TextFormFieldStyleHelper.outlineGray300,
                      enabledBorderDecoration:
                          TextFormFieldStyleHelper.outlineGray300,
                      focusedBorderDecoration:
                          TextFormFieldStyleHelper.outlineGray300,
                      disabledBorderDecoration:
                          TextFormFieldStyleHelper.outlineGray300,
                    ),
                  ),
                  CustomElevatedButton(
                    onTap: () {
                      FocusManager.instance.primaryFocus!.unfocus();
                      // if(_formKey.currentState!.validate()&& controller.emailController.text.isNotEmpty&& controller.passwordController.text.isNotEmpty){
                      //   controller.postRequest();
                      // }
                      Get.toNamed(AppRoutes.dashboardScreen,arguments: {'arg1': 'val1', 'arg2': 'val2'});
                    },
                    text: "lbl_log_in".tr,
                    margin: getMargin(
                      left: 16,
                      top: 43,
                      right: 16,
                    ),
                    buttonStyle: CustomButtonStyles.fillPrimary.copyWith(
                        fixedSize: MaterialStateProperty.all<Size>(Size(
                      double.maxFinite,
                      getVerticalSize(
                        52,
                      ),
                    ))),
                    buttonTextStyle: CustomTextStyles.bodyLargePrimaryContainer,
                  ),
                  // Padding(
                  //   padding: getPadding(
                  //     top: 18,
                  //   ),
                  //   child: Text(
                  //     "msg_new_to_b_b_connect".tr,
                  //     overflow: TextOverflow.ellipsis,
                  //     textAlign: TextAlign.left,
                  //     style: CustomTextStyles.bodyMediumGray400,
                  //   ),
                  // ),
                  Padding(
                    padding: getPadding(
                      top: 20,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "msg_by_continuing_you2".tr,
                            style: CustomTextStyles.bodyMediumGray400Light,
                          ),
                          TextSpan(
                            text: "msg_terms_conditions".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle116,
                    color: Colors.black,
                    height: getVerticalSize(
                      73,
                    ),
                    width: getHorizontalSize(
                      360,
                    ),
                    radius: BorderRadius.circular(
                      getHorizontalSize(
                        0,
                      ),
                    ),
                    margin: getMargin(
                      top: 50,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
