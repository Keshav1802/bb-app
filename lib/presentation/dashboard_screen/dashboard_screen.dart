import 'package:bb_app/presentation/android_large_one_screen/models/android_large_one_model.dart';
import 'package:bb_app/presentation/sidebar_menu_draweritem.dart';

import '../dashboard_screen/widgets/dashboard1_item_widget.dart';
import '../dashboard_screen/widgets/dashboard_item_widget.dart';
import 'controller/dashboard_controller.dart';
import 'models/dashboard1_item_model.dart';
import 'models/dashboard_item_model.dart';
import 'package:bb_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class DashboardScreen extends GetWidget<DashboardController> {
  dynamic argumentData = Get.arguments;
  // final LoginData loginData;
  // DashboardScreen(this.loginData);

  @override
  Widget build(BuildContext context) {
    String _getGreeting() {
      var currentTime = DateTime.now();
      var hour = currentTime.hour;

      if (hour < 12) {
        return "Good Morning ";
      } else {
        return "Good Afternoon ";
      }
    }
    mediaQueryData = MediaQuery.of(context);
    final GlobalKey<ScaffoldState> _scaffoldKey =
        new GlobalKey<ScaffoldState>();

    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: theme.colorScheme.onPrimary,
        drawer: SidebarMenuDraweritem(),
        body: SizedBox(
          width: double.maxFinite,
          // height: 0.9*MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            padding: getPadding(
              top: 21,
            ),
            child: Padding(
              padding: getPadding(
                left: 16,
                bottom: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomImageView(
                    onTap: () {
                      print(argumentData);
                      _scaffoldKey.currentState!.openDrawer();
                    },
                    svgPath: ImageConstant.imgMenu,
                    height: getSize(
                      42,
                    ),
                    width: getSize(
                      42,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 13,
                    ),
                    child: Text(
                      'Hello ${_getGreeting()}!',
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                  SizedBox(
                    height: getVerticalSize(
                      130,
                    ),
                    child: Obx(
                      () => ListView.separated(
                        padding: getPadding(
                          left: 1,
                          top: 22,
                          right: 15,
                        ),
                        physics:const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (
                          context,
                          index,
                        ) {
                          return SizedBox(
                            width: getHorizontalSize(
                              14,
                            ),
                          );
                        },
                        itemCount: controller.dashboardModelObj.value
                            .dashboardItemList.value.length,
                        itemBuilder: (context, index) {
                          DashboardItemModel model = controller
                              .dashboardModelObj
                              .value
                              .dashboardItemList
                              .value[index];
                          return DashboardItemWidget(
                            model,
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 14,
                    ),
                    child: Divider(
                      height: getVerticalSize(
                        1,
                      ),
                      thickness: getVerticalSize(
                        1,
                      ),
                      color: appTheme.gray300,
                      endIndent: getHorizontalSize(
                        16,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 23,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_campaigns".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: theme.textTheme.titleLarge,
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () {
                            Get.toNamed(AppRoutes.androidLargeFiveScreen);
                          },
                          child: Padding(
                            padding: getPadding(
                              bottom: 5,
                            ),
                            child: Text(
                              "lbl_view_more".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.bodyLargeBlack900,
                            ),
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgArrowright,
                          height: getSize(
                            20,
                          ),
                          width: getSize(
                            20,
                          ),
                          margin: getMargin(
                            left: 2,
                            bottom: 4,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 19,
                      right: 16,
                    ),
                    child: Obx(
                      () => GridView.builder(
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: getVerticalSize(
                            161,
                          ),
                          crossAxisCount: 2,
                          mainAxisSpacing: getHorizontalSize(
                            8,
                          ),
                          crossAxisSpacing: getHorizontalSize(
                            8,
                          ),
                        ),
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: controller.dashboardModelObj.value
                            .dashboard1ItemList.value.length,
                        itemBuilder: (context, index) {
                          Dashboard1ItemModel model = controller
                              .dashboardModelObj
                              .value
                              .dashboard1ItemList
                              .value[index];
                          return Dashboard1ItemWidget(
                            model,
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 22,
                    ),
                    child: Divider(
                      height: getVerticalSize(
                        1,
                      ),
                      thickness: getVerticalSize(
                        1,
                      ),
                      color: appTheme.gray300,
                      endIndent: getHorizontalSize(
                        16,
                      ),
                    ),
                  ),
                  Container(
                    height: 0.7 * MediaQuery.of(context).size.height,
                    child: Stack(
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 21,
                          ),
                          child: Row(
                            children: [
                              Text(
                                "lbl_b_b_social".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: theme.textTheme.titleLarge,
                              ),
                              Spacer(),
                              InkWell(
                                onTap: () {
                                  Get.toNamed(AppRoutes.dashboardOneScreen);
                                },
                                child: Padding(
                                  padding: getPadding(
                                    top: 1,
                                    bottom: 3,
                                  ),
                                  child: Text(
                                    "lbl_view_more".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles.bodyLargeBlack900,
                                  ),
                                ),
                              ),
                              CustomImageView(
                                svgPath: ImageConstant.imgArrowright,
                                height: getSize(
                                  20,
                                ),
                                width: getSize(
                                  20,
                                ),
                                margin: getMargin(
                                  left: 2,
                                  top: 2,
                                  bottom: 1,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              top: 50,
                              // bottom:
                              //     0.35 * MediaQuery.of(context).size.height
                          ),
                          height: MediaQuery.of(context).size.height,
                          child: ListView.separated(
                            shrinkWrap: true,
                            physics: const BouncingScrollPhysics(),
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      top: 10,
                                    ),
                                    child: Row(
                                      children: [
                                        Card(
                                          clipBehavior: Clip.antiAlias,
                                          elevation: 0,
                                          margin: EdgeInsets.all(0),
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                              color: appTheme.black900,
                                              width: getHorizontalSize(
                                                1,
                                              ),
                                            ),
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder26,
                                          ),
                                          child: Container(
                                            height: getSize(
                                              53,
                                            ),
                                            width: getSize(
                                              53,
                                            ),
                                            decoration:
                                                AppDecoration.outline1.copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder26,
                                            ),
                                            child: Stack(
                                              children: [
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgEllipse447x47,
                                                  height: getSize(
                                                    47,
                                                  ),
                                                  width: getSize(
                                                    47,
                                                  ),
                                                  radius: BorderRadius.circular(
                                                    getHorizontalSize(
                                                      23,
                                                    ),
                                                  ),
                                                  alignment:
                                                      Alignment.bottomRight,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: getPadding(
                                              left: 21,
                                              top: 11,
                                              bottom: 3,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "lbl_joseph_mcguire".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .bodyLargeBlack900,
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    top: 3,
                                                  ),
                                                  child: Text(
                                                    "msg_2023_07_26".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .bodySmallGray600,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: getPadding(
                                      left: 6,
                                      top: 21,
                                    ),
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "lbl_taste".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.bodyMedium,
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgRectangle145,
                                    height: getSize(
                                      328,
                                    ),
                                    width: getSize(
                                      328,
                                    ),
                                    radius: BorderRadius.circular(
                                      getHorizontalSize(
                                        12,
                                      ),
                                    ),
                                    margin: getMargin(
                                      top: 12,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 22,
                                    ),
                                    child: Divider(
                                      height: getVerticalSize(
                                        1,
                                      ),
                                      thickness: getVerticalSize(
                                        1,
                                      ),
                                      color: appTheme.gray300,
                                      endIndent: getHorizontalSize(
                                        16,
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return SizedBox(
                                  height: getHorizontalSize(
                                14,
                              ));
                            },
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Padding(
                  //   padding: getPadding(
                  //     top: 22,
                  //   ),
                  //   child: Row(
                  //     children: [
                  //       Card(
                  //         clipBehavior: Clip.antiAlias,
                  //         elevation: 0,
                  //         margin: EdgeInsets.all(0),
                  //         shape: RoundedRectangleBorder(
                  //           side: BorderSide(
                  //             color: appTheme.black900,
                  //             width: getHorizontalSize(
                  //               1,
                  //             ),
                  //           ),
                  //           borderRadius: BorderRadiusStyle.roundedBorder26,
                  //         ),
                  //         child: Container(
                  //           height: getSize(
                  //             53,
                  //           ),
                  //           width: getSize(
                  //             53,
                  //           ),
                  //           decoration: AppDecoration.outline1.copyWith(
                  //             borderRadius: BorderRadiusStyle.roundedBorder26,
                  //           ),
                  //           child: Stack(
                  //             children: [
                  //               CustomImageView(
                  //                 imagePath: ImageConstant.imgEllipse447x47,
                  //                 height: getSize(
                  //                   47,
                  //                 ),
                  //                 width: getSize(
                  //                   47,
                  //                 ),
                  //                 radius: BorderRadius.circular(
                  //                   getHorizontalSize(
                  //                     23,
                  //                   ),
                  //                 ),
                  //                 alignment: Alignment.bottomRight,
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //       Expanded(
                  //         child: Padding(
                  //           padding: getPadding(
                  //             left: 21,
                  //             top: 11,
                  //             bottom: 3,
                  //           ),
                  //           child: Column(
                  //             crossAxisAlignment: CrossAxisAlignment.start,
                  //             mainAxisAlignment: MainAxisAlignment.start,
                  //             children: [
                  //               Text(
                  //                 "lbl_joseph_mcguire".tr,
                  //                 overflow: TextOverflow.ellipsis,
                  //                 textAlign: TextAlign.left,
                  //                 style: CustomTextStyles.bodyLargeBlack900,
                  //               ),
                  //               Padding(
                  //                 padding: getPadding(
                  //                   top: 3,
                  //                 ),
                  //                 child: Text(
                  //                   "msg_2023_07_26".tr,
                  //                   overflow: TextOverflow.ellipsis,
                  //                   textAlign: TextAlign.left,
                  //                   style: CustomTextStyles.bodySmallGray600,
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // Padding(
                  //   padding: getPadding(
                  //     left: 6,
                  //     top: 21,
                  //   ),
                  //   child: Text(
                  //     "lbl_taste".tr,
                  //     overflow: TextOverflow.ellipsis,
                  //     textAlign: TextAlign.left,
                  //     style: theme.textTheme.bodyMedium,
                  //   ),
                  // ),
                  // CustomImageView(
                  //   imagePath: ImageConstant.imgRectangle145,
                  //   height: getSize(
                  //     328,
                  //   ),
                  //   width: getSize(
                  //     328,
                  //   ),
                  //   radius: BorderRadius.circular(
                  //     getHorizontalSize(
                  //       12,
                  //     ),
                  //   ),
                  //   margin: getMargin(
                  //     top: 12,
                  //   ),
                  // ),
                  // Padding(
                  //   padding: getPadding(
                  //     top: 22,
                  //   ),
                  //   child: Divider(
                  //     height: getVerticalSize(
                  //       1,
                  //     ),
                  //     thickness: getVerticalSize(
                  //       1,
                  //     ),
                  //     color: appTheme.gray300,
                  //     endIndent: getHorizontalSize(
                  //       16,
                  //     ),
                  //   ),
                  // ),
                  // Padding(
                  //   padding: getPadding(
                  //     top: 22,
                  //   ),
                  //   child: Row(
                  //     children: [
                  //       Card(
                  //         clipBehavior: Clip.antiAlias,
                  //         elevation: 0,
                  //         margin: EdgeInsets.all(0),
                  //         shape: RoundedRectangleBorder(
                  //           side: BorderSide(
                  //             color: appTheme.black900,
                  //             width: getHorizontalSize(
                  //               1,
                  //             ),
                  //           ),
                  //           borderRadius: BorderRadiusStyle.roundedBorder26,
                  //         ),
                  //         child: Container(
                  //           height: getSize(
                  //             53,
                  //           ),
                  //           width: getSize(
                  //             53,
                  //           ),
                  //           decoration: AppDecoration.outline1.copyWith(
                  //             borderRadius: BorderRadiusStyle.roundedBorder26,
                  //           ),
                  //           child: Stack(
                  //             children: [
                  //               CustomImageView(
                  //                 imagePath: ImageConstant.imgEllipse447x47,
                  //                 height: getSize(
                  //                   47,
                  //                 ),
                  //                 width: getSize(
                  //                   47,
                  //                 ),
                  //                 radius: BorderRadius.circular(
                  //                   getHorizontalSize(
                  //                     23,
                  //                   ),
                  //                 ),
                  //                 alignment: Alignment.bottomRight,
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //       Expanded(
                  //         child: Padding(
                  //           padding: getPadding(
                  //             left: 21,
                  //             top: 11,
                  //             bottom: 3,
                  //           ),
                  //           child: Column(
                  //             crossAxisAlignment: CrossAxisAlignment.start,
                  //             mainAxisAlignment: MainAxisAlignment.start,
                  //             children: [
                  //               Text(
                  //                 "lbl_joseph_mcguire".tr,
                  //                 overflow: TextOverflow.ellipsis,
                  //                 textAlign: TextAlign.left,
                  //                 style: CustomTextStyles.bodyLargeBlack900,
                  //               ),
                  //               Padding(
                  //                 padding: getPadding(
                  //                   top: 3,
                  //                 ),
                  //                 child: Text(
                  //                   "msg_2023_07_262".tr,
                  //                   overflow: TextOverflow.ellipsis,
                  //                   textAlign: TextAlign.left,
                  //                   style: CustomTextStyles.bodySmallGray600,
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // Padding(
                  //   padding: getPadding(
                  //     left: 6,
                  //     top: 22,
                  //   ),
                  //   child: Text(
                  //     "lbl_always_shine".tr,
                  //     overflow: TextOverflow.ellipsis,
                  //     textAlign: TextAlign.left,
                  //     style: theme.textTheme.bodyMedium,
                  //   ),
                  // ),
                  // CustomImageView(
                  //   imagePath: ImageConstant.imgRectangle145328x328,
                  //   height: getSize(
                  //     328,
                  //   ),
                  //   width: getSize(
                  //     328,
                  //   ),
                  //   radius: BorderRadius.circular(
                  //     getHorizontalSize(
                  //       12,
                  //     ),
                  //   ),
                  //   margin: getMargin(
                  //     top: 11,
                  //   ),
                  // ),
                  // Padding(
                  //   padding: getPadding(
                  //     top: 22,
                  //   ),
                  //   child: Divider(
                  //     height: getVerticalSize(
                  //       1,
                  //     ),
                  //     thickness: getVerticalSize(
                  //       1,
                  //     ),
                  //     color: appTheme.gray300,
                  //     endIndent: getHorizontalSize(
                  //       16,
                  //     ),
                  //   ),
                  // ),
                  // Padding(
                  //   padding: getPadding(
                  //     top: 22,
                  //   ),
                  //   child: Row(
                  //     children: [
                  //       Card(
                  //         clipBehavior: Clip.antiAlias,
                  //         elevation: 0,
                  //         margin: EdgeInsets.all(0),
                  //         shape: RoundedRectangleBorder(
                  //           side: BorderSide(
                  //             color: appTheme.black900,
                  //             width: getHorizontalSize(
                  //               1,
                  //             ),
                  //           ),
                  //           borderRadius: BorderRadiusStyle.roundedBorder26,
                  //         ),
                  //         child: Container(
                  //           height: getSize(
                  //             53,
                  //           ),
                  //           width: getSize(
                  //             53,
                  //           ),
                  //           decoration: AppDecoration.outline1.copyWith(
                  //             borderRadius: BorderRadiusStyle.roundedBorder26,
                  //           ),
                  //           child: Stack(
                  //             children: [
                  //               CustomImageView(
                  //                 imagePath: ImageConstant.imgEllipse447x47,
                  //                 height: getSize(
                  //                   47,
                  //                 ),
                  //                 width: getSize(
                  //                   47,
                  //                 ),
                  //                 radius: BorderRadius.circular(
                  //                   getHorizontalSize(
                  //                     23,
                  //                   ),
                  //                 ),
                  //                 alignment: Alignment.bottomRight,
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //       Expanded(
                  //         child: Padding(
                  //           padding: getPadding(
                  //             left: 21,
                  //             top: 11,
                  //             bottom: 3,
                  //           ),
                  //           child: Column(
                  //             crossAxisAlignment: CrossAxisAlignment.start,
                  //             mainAxisAlignment: MainAxisAlignment.start,
                  //             children: [
                  //               Text(
                  //                 "lbl_joseph_mcguire".tr,
                  //                 overflow: TextOverflow.ellipsis,
                  //                 textAlign: TextAlign.left,
                  //                 style: CustomTextStyles.bodyLargeBlack900,
                  //               ),
                  //               Padding(
                  //                 padding: getPadding(
                  //                   top: 3,
                  //                 ),
                  //                 child: Text(
                  //                   "msg_2023_07_26".tr,
                  //                   overflow: TextOverflow.ellipsis,
                  //                   textAlign: TextAlign.left,
                  //                   style: CustomTextStyles.bodySmallGray600,
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // CustomImageView(
                  //   svgPath: ImageConstant.imgFavorite,
                  //   height: getVerticalSize(
                  //     17,
                  //   ),
                  //   width: getHorizontalSize(
                  //     20,
                  //   ),
                  //   margin: getMargin(
                  //     left: 6,
                  //     top: 22,
                  //   ),
                  // ),
                  // CustomImageView(
                  //   imagePath: ImageConstant.imgRectangle1451,
                  //   height: getSize(
                  //     328,
                  //   ),
                  //   width: getSize(
                  //     328,
                  //   ),
                  //   radius: BorderRadius.circular(
                  //     getHorizontalSize(
                  //       12,
                  //     ),
                  //   ),
                  //   margin: getMargin(
                  //     top: 10,
                  //   ),
                  // ),
                  // Padding(
                  //   padding: getPadding(
                  //     top: 22,
                  //   ),
                  //   child: Divider(
                  //     height: getVerticalSize(
                  //       1,
                  //     ),
                  //     thickness: getVerticalSize(
                  //       1,
                  //     ),
                  //     color: appTheme.gray300,
                  //     endIndent: getHorizontalSize(
                  //       16,
                  //     ),
                  //   ),
                  // ),
                  // Padding(
                  //   padding: getPadding(
                  //     top: 22,
                  //   ),
                  //   child: Row(
                  //     children: [
                  //       Card(
                  //         clipBehavior: Clip.antiAlias,
                  //         elevation: 0,
                  //         margin: EdgeInsets.all(0),
                  //         shape: RoundedRectangleBorder(
                  //           side: BorderSide(
                  //             color: appTheme.black900,
                  //             width: getHorizontalSize(
                  //               1,
                  //             ),
                  //           ),
                  //           borderRadius: BorderRadiusStyle.roundedBorder26,
                  //         ),
                  //         child: Container(
                  //           height: getSize(
                  //             53,
                  //           ),
                  //           width: getSize(
                  //             53,
                  //           ),
                  //           decoration: AppDecoration.outline1.copyWith(
                  //             borderRadius: BorderRadiusStyle.roundedBorder26,
                  //           ),
                  //           child: Stack(
                  //             children: [
                  //               CustomImageView(
                  //                 imagePath: ImageConstant.imgEllipse447x47,
                  //                 height: getSize(
                  //                   47,
                  //                 ),
                  //                 width: getSize(
                  //                   47,
                  //                 ),
                  //                 radius: BorderRadius.circular(
                  //                   getHorizontalSize(
                  //                     23,
                  //                   ),
                  //                 ),
                  //                 alignment: Alignment.bottomRight,
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //       Expanded(
                  //         child: Padding(
                  //           padding: getPadding(
                  //             left: 21,
                  //             top: 11,
                  //             bottom: 3,
                  //           ),
                  //           child: Column(
                  //             crossAxisAlignment: CrossAxisAlignment.start,
                  //             mainAxisAlignment: MainAxisAlignment.start,
                  //             children: [
                  //               Text(
                  //                 "lbl_joseph_mcguire".tr,
                  //                 overflow: TextOverflow.ellipsis,
                  //                 textAlign: TextAlign.left,
                  //                 style: CustomTextStyles.bodyLargeBlack900,
                  //               ),
                  //               Padding(
                  //                 padding: getPadding(
                  //                   top: 3,
                  //                 ),
                  //                 child: Text(
                  //                   "msg_2023_07_263".tr,
                  //                   overflow: TextOverflow.ellipsis,
                  //                   textAlign: TextAlign.left,
                  //                   style: CustomTextStyles.bodySmallGray600,
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // Padding(
                  //   padding: getPadding(
                  //     left: 6,
                  //     top: 21,
                  //   ),
                  //   child: Text(
                  //     "lbl_fresh".tr,
                  //     overflow: TextOverflow.ellipsis,
                  //     textAlign: TextAlign.left,
                  //     style: theme.textTheme.bodyMedium,
                  //   ),
                  // ),
                  // CustomImageView(
                  //   imagePath: ImageConstant.imgRectangle1452,
                  //   height: getSize(
                  //     328,
                  //   ),
                  //   width: getSize(
                  //     328,
                  //   ),
                  //   radius: BorderRadius.circular(
                  //     getHorizontalSize(
                  //       12,
                  //     ),
                  //   ),
                  //   margin: getMargin(
                  //     top: 12,
                  //   ),
                  // ),
                  // Padding(
                  //   padding: getPadding(
                  //     top: 22,
                  //   ),
                  //   child: Divider(
                  //     height: getVerticalSize(
                  //       1,
                  //     ),
                  //     thickness: getVerticalSize(
                  //       1,
                  //     ),
                  //     color: appTheme.gray300,
                  //     endIndent: getHorizontalSize(
                  //       16,
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
