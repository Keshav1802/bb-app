import 'controller/dashboard_two_controller.dart';
import 'package:bb_app/core/app_export.dart';
import 'package:bb_app/widgets/app_bar/appbar_iconbutton.dart';
import 'package:bb_app/widgets/app_bar/custom_app_bar.dart';
import 'package:bb_app/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class DashboardTwoScreen extends GetWidget<DashboardTwoController> {
  const DashboardTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: theme.colorScheme.onPrimary,
            // appBar: CustomAppBar(
            //     height: getVerticalSize(70),
            //     leadingWidth: 360,
            //     leading: AppbarIconbutton(
            //         svgPath: ImageConstant.imgArrowleft,
            //         margin: getMargin(left: 16, top: 7, right: 302, bottom: 7),
            //         onTap: () {
            //           onTapArrowleft1();
            //         })),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 15, top: 7, right: 15, bottom: 7),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      AppbarIconbutton(
                          svgPath: ImageConstant.imgArrowleft,
                          margin: getMargin(left: 5, top: 7, bottom: 20),
                          onTap: () {
                            Get.back();
                          }),
                      CustomSearchView1(
                          controller: controller.searchController,
                          hintText: "lbl_search".tr,
                          hintStyle: CustomTextStyles.bodyLargeGray400,
                          textStyle: CustomTextStyles.bodyLargeGray400,
                          textInputAction: TextInputAction.search,
                          prefix: Container(
                              margin: getMargin(
                                  left: 12, top: 12, right: 10, bottom: 12),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgIcons24Search1)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(40)),
                          suffix: Padding(
                              padding:
                                  EdgeInsets.only(right: getHorizontalSize(15)),
                              child: IconButton(
                                  onPressed: () {
                                    controller.searchController.clear();
                                  },
                                  icon: Icon(Icons.clear,
                                      color: Colors.grey.shade600))),
                          filled: true,
                          fillColor: theme.colorScheme.onPrimary,
                          contentPadding:
                              getPadding(top: 10, right: 30, bottom: 10)),
                      // Padding(
                      //     padding: getPadding(left: 1, top: 22, right: 2),
                      //     child: Row(
                      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //         children: [
                      //           Container(
                      //               width: getHorizontalSize(72),
                      //               padding: getPadding(
                      //                   left: 11,
                      //                   top: 10,
                      //                   right: 11,
                      //                   bottom: 10),
                      //               decoration: AppDecoration.txtOutline
                      //                   .copyWith(
                      //                   borderRadius: BorderRadiusStyle
                      //                       .txtRoundedBorder14),
                      //               child: Text("lbl_all".tr,
                      //                   overflow: TextOverflow.ellipsis,
                      //                   textAlign: TextAlign.center,
                      //                   style: theme.textTheme.bodySmall)),
                      //           Container(
                      //               width: getHorizontalSize(72),
                      //               padding: getPadding(
                      //                   left: 11,
                      //                   top: 10,
                      //                   right: 11,
                      //                   bottom: 10),
                      //               decoration: AppDecoration.txtOutline
                      //                   .copyWith(
                      //                       borderRadius: BorderRadiusStyle
                      //                           .txtRoundedBorder14),
                      //               child: Text("lbl_bloggers".tr,
                      //                   overflow: TextOverflow.ellipsis,
                      //                   textAlign: TextAlign.left,
                      //                   style: theme.textTheme.bodySmall)),
                      //           Container(
                      //               width: getHorizontalSize(72),
                      //               padding: getPadding(
                      //                   left: 16,
                      //                   top: 11,
                      //                   right: 16,
                      //                   bottom: 11),
                      //               decoration: AppDecoration.txtOutline
                      //                   .copyWith(
                      //                       borderRadius: BorderRadiusStyle
                      //                           .txtRoundedBorder14),
                      //               child: Text("lbl_brands".tr,
                      //                   overflow: TextOverflow.ellipsis,
                      //                   textAlign: TextAlign.left,
                      //                   style: theme.textTheme.bodySmall)),
                      //           Container(
                      //               width: getHorizontalSize(72),
                      //               padding: getPadding(
                      //                   left: 13,
                      //                   top: 10,
                      //                   right: 13,
                      //                   bottom: 10),
                      //               decoration: AppDecoration.txtOutline
                      //                   .copyWith(
                      //                       borderRadius: BorderRadiusStyle
                      //                           .txtRoundedBorder14),
                      //               child: Text("lbl_hastags".tr,
                      //                   overflow: TextOverflow.ellipsis,
                      //                   textAlign: TextAlign.left,
                      //                   style: theme.textTheme.bodySmall))
                      //         ])),
                      // Padding(
                      //     padding: getPadding(top: 9),
                      //     child: SizedBox(
                      //         width: getHorizontalSize(63),
                      //         child: Divider(
                      //             height: getVerticalSize(5),
                      //             thickness: getVerticalSize(5),
                      //             color: theme.colorScheme.primary,
                      //             indent: getHorizontalSize(11)))),
                      Padding(
                          padding: getPadding(top: 22, bottom: 0),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: appTheme.gray300,
                              indent: getHorizontalSize(1))),
                      controller.searchController.text.isNotEmpty?
                      Container(
                        padding: EdgeInsets.only(top: 0,bottom: 10),
                        height: 0.75*MediaQuery.of(context).size.height,
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          itemCount: 10,
                          itemBuilder: (context,index){
                            return InkWell(
                              onTap: (){
                                Get.toNamed(AppRoutes.dashboardThreeScreen);
                              },
                              child: Padding(
                                padding: getPadding(top: 20, left: 10, right: 10),
                                child: Row(
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgRectangle122,
                                        height: getSize(56),
                                        width: getSize(56),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(20))),
                                    Padding(
                                        padding: getPadding(
                                          top: 11,
                                          left: 15,
                                        ),
                                        child: Text("lbl_ross_adkins".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                            CustomTextStyles.titleLargeSemiBold)),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ):Container()
                    ]))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] library to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleft1() {
    Get.back();
  }
}
