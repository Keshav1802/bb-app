import '../controller/android_large_five_controller.dart';
import '../models/listrectangle14_item_model.dart';
import 'package:bb_app/core/app_export.dart';
import 'package:bb_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listrectangle14ItemWidget extends StatelessWidget {
  Listrectangle14ItemWidget(
    this.listrectangle14ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Listrectangle14ItemModel listrectangle14ItemModelObj;

  var controller = Get.find<AndroidLargeFiveController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: getVerticalSize(
            186,
          ),
          width: getHorizontalSize(
            328,
          ),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle144,
                height: getVerticalSize(
                  186,
                ),
                width: getHorizontalSize(
                  328,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    8,
                  ),
                ),
                alignment: Alignment.center,
              ),
              CustomElevatedButton(
                text: "lbl_elitty_beauty".tr,
                margin: getMargin(
                  top: 12,
                  right: 10,
                ),
                buttonStyle: CustomButtonStyles.fillBlack900.copyWith(
                    fixedSize: MaterialStateProperty.all<Size>(Size(
                  getHorizontalSize(
                    73,
                  ),
                  getVerticalSize(
                    24,
                  ),
                ))),
                buttonTextStyle: CustomTextStyles.bodySmallPrimaryContainer10,
                alignment: Alignment.topRight,
              ),
            ],
          ),
        ),
        Padding(
          padding: getPadding(
            top: 11,
          ),
          child: Obx(
            () => Text(
              listrectangle14ItemModelObj.nameTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: theme.textTheme.headlineSmall,
            ),
          ),
        ),
        Container(
          width: getHorizontalSize(
            34,
          ),
          margin: getMargin(
            top: 3,
            bottom: 23,
          ),
          padding: getPadding(
            left: 2,
            top: 1,
            right: 2,
            bottom: 1,
          ),
          decoration: AppDecoration.txtFill.copyWith(
            borderRadius: BorderRadiusStyle.txtRoundedBorder2,
          ),
          child: Text(
            "lbl_prime".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: CustomTextStyles.bodySmallPrimaryContainer,
          ),
        ),
      ],
    );
  }
}
