import 'package:cached_network_image/cached_network_image.dart';

import '../../widgets/app_bar/appbar_iconbutton.dart';
import '../dashboard_one_screen/widgets/dashboard_one1_item_widget.dart';
import '../dashboard_one_screen/widgets/dashboard_one_item_widget.dart';
import 'controller/dashboard_one_controller.dart';
import 'models/dashboard_one1_item_model.dart';
import 'models/dashboard_one_item_model.dart';
import 'package:bb_app/core/app_export.dart';
import 'package:bb_app/widgets/app_bar/custom_app_bar.dart';
import 'package:bb_app/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

// ignore_for_file: must_be_immutable
class DashboardOneScreen extends GetWidget<DashboardOneController> {
   DashboardOneScreen({Key? key})
      : super(
          key: key,
        );

  List<String> _NFTImgurls = [
    'https://lh3.googleusercontent.com/pw/AIL4fc-o8Dxn2BEUnY0kBCiewD1ASUmSPDORNrBlTLFEDniurjSnfI4ZsCExKzPXnFJInWVVtDMWx8uivLSG2YlguJI7BCM5aNzMqiVViUPMpSicdlrhqsLcEmXD5v0M5kuXQrX3X_J29icD7jdLcyhN23WN4Q=w162-h165-s-no?authuser=0',
    'https://lh3.googleusercontent.com/pw/AIL4fc8GTy2a7Nb7Zknf6vxnPu-EChGHtNXbTx3wwaJWHhN0R4tlzluOlTDEl0s5LTC_FhbPI-ZZQHsY4EamhGILxnnFWWu9D5jTCSnoO1IyPC0riADE50xwR_Vb8AbEk7LhXKRkBOLN1F_fnbALw8PFDIMDPw=w162-h165-s-no?authuser=0',
    'https://lh3.googleusercontent.com/pw/AIL4fc-roBS3-QhizzkzN2rE41QFV31yLjYAfsZkNZ9kaIX2iZIoL6p6JgUsodS4v8Cw6NMHkkPptDLzbHnQprYolvcDIQR1I0S5YVGPSYbWszyPTYG1yTzv2yHaaXNoAWVVWXYOQy5eYRglVXM8uIiONz-Wvg=w329-h165-s-no?authuser=0',
    'https://lh3.googleusercontent.com/pw/AIL4fc-o8Dxn2BEUnY0kBCiewD1ASUmSPDORNrBlTLFEDniurjSnfI4ZsCExKzPXnFJInWVVtDMWx8uivLSG2YlguJI7BCM5aNzMqiVViUPMpSicdlrhqsLcEmXD5v0M5kuXQrX3X_J29icD7jdLcyhN23WN4Q=w162-h165-s-no?authuser=0',
    // 'https://lh3.googleusercontent.com/pw/AIL4fc8l_QjYhUjCT-sZPvABPXZd0enZUctWlxABq0FAwev7KgmbzkxPtzYdYT7ICeE8NVKTGbcsh-KBJ3U1yG2nxtUeYedtztTgSLwrQio3Q8xufnC9Ias0EWintp3Nri8GhM1vz9T6MFyPe4J6FUVLSD_5mg=w79-h80-s-no?authuser=0',
    // 'https://lh3.googleusercontent.com/pw/AIL4fc9thYrhViYT6YdWa0Eouavf-R_bX1hbKaiCGmH7wFCkLSDIaKcX1kgJ49TP-VO3NyQL6ldUD3NLXz7ky555sMejPeGSJAUY64XO2P1g3Bo7F1d_OtbkgOuQPva3kYKINJ4eWRAgnbqviZZlTzD47YG_9Q=w79-h80-s-no?authuser=0',
    // 'https://lh3.googleusercontent.com/pw/AIL4fc_dibKxKnzjicGw0bCAu6PtAIRiXsk63vipn_dVb1cpoAa-PbxtW86x8ytnH7zIInnOR3daVGoJyMq7IJi8cAIz4m_vQrU7OHLnjEUMAYXqyowxdFpPKvZg2bp7HjVx_e0XaIfRmcpLguGkV2s1Xj4lDw=w79-h80-s-no?authuser=0',
    // 'https://lh3.googleusercontent.com/pw/AIL4fc93WKcP8ZOAlymicXqPp-ucSo9jZAe5kiojD-ZjCnmsBn7MjX0e10eNrpc_Q42NaEW27cOroGXQgbGe6XsVm2zgOHuV-fyQ00bm-JmjB41lU642aN5hloAvfm9PnrFcVnRCbhM2JHSTHchgez2HzgIZoQ=w79-h80-s-no?authuser=0',
    'https://lh3.googleusercontent.com/pw/AIL4fc-roBS3-QhizzkzN2rE41QFV31yLjYAfsZkNZ9kaIX2iZIoL6p6JgUsodS4v8Cw6NMHkkPptDLzbHnQprYolvcDIQR1I0S5YVGPSYbWszyPTYG1yTzv2yHaaXNoAWVVWXYOQy5eYRglVXM8uIiONz-Wvg=w329-h165-s-no?authuser=0',
    'https://lh3.googleusercontent.com/pw/AIL4fc9OwzxvBw15LiGR60TmJtoOWMvIdK0YeoOkY-UxxLb_MO2ft1U7vSVopAsv0G-OyhEZp0MxB80G-wf5pdeI_MYwh4vNYNvBZ1T88pgUs-i_rLnvkHIbAed0Ka72mK1Sub-dciNDI51lb1j71qt0NrWKJA=w162-h80-s-no?authuser=0',
    'https://lh3.googleusercontent.com/pw/AIL4fc92rqk5GMIrGnJkEqaJMEg7lwzKjAffSBe6I5_5NbfmJct2KjWu5naBOHyAOdfHO4u2eNfQp-znNCqo-lXVmOH_MMSiz08jKtu301GHFe1hfK_uTwtJkSRrg5DbkRVVLNX1zEyVFFfV15FYYYIRk-rYaA=w162-h80-s-no?authuser=0',
    'https://lh3.googleusercontent.com/pw/AIL4fc9CKQw5AmNjup48d26B0oWNTr1DgwE51LawRfME-DGSGFg5kz8daT3IrUxAH254p8kU_RJkXtgwk4v9fpE-3040OGmgyO_Z52tLVQObAUez8BFGbwWEazByMv_BBTCKthHJZ5X35pxY0oe3OE4UgACS4A=w162-h165-s-no?authuser=0',
    'https://lh3.googleusercontent.com/pw/AIL4fc87S_Hrbu5qes1JqWhprXSmUGDa4G_PNpGlJ5iIyWfIH-n5tRlL15i7LPVRYtjtVhmo8ZDO1b8whm_BB0hPQQQo85QT2lRTBlfM_lKMFuJaOGoBkzJDCcZSF8BgdtZIeKL7D39HNAWr69yq-9G3vXtRBQ=w162-h165-s-no?authuser=0',
    'https://lh3.googleusercontent.com/pw/AIL4fc8GTy2a7Nb7Zknf6vxnPu-EChGHtNXbTx3wwaJWHhN0R4tlzluOlTDEl0s5LTC_FhbPI-ZZQHsY4EamhGILxnnFWWu9D5jTCSnoO1IyPC0riADE50xwR_Vb8AbEk7LhXKRkBOLN1F_fnbALw8PFDIMDPw=w162-h165-s-no?authuser=0',
    'https://lh3.googleusercontent.com/pw/AIL4fc-roBS3-QhizzkzN2rE41QFV31yLjYAfsZkNZ9kaIX2iZIoL6p6JgUsodS4v8Cw6NMHkkPptDLzbHnQprYolvcDIQR1I0S5YVGPSYbWszyPTYG1yTzv2yHaaXNoAWVVWXYOQy5eYRglVXM8uIiONz-Wvg=w329-h165-s-no?authuser=0',
    'https://lh3.googleusercontent.com/pw/AIL4fc9OwzxvBw15LiGR60TmJtoOWMvIdK0YeoOkY-UxxLb_MO2ft1U7vSVopAsv0G-OyhEZp0MxB80G-wf5pdeI_MYwh4vNYNvBZ1T88pgUs-i_rLnvkHIbAed0Ka72mK1Sub-dciNDI51lb1j71qt0NrWKJA=w162-h80-s-no?authuser=0',
    'https://lh3.googleusercontent.com/pw/AIL4fc92rqk5GMIrGnJkEqaJMEg7lwzKjAffSBe6I5_5NbfmJct2KjWu5naBOHyAOdfHO4u2eNfQp-znNCqo-lXVmOH_MMSiz08jKtu301GHFe1hfK_uTwtJkSRrg5DbkRVVLNX1zEyVFFfV15FYYYIRk-rYaA=w162-h80-s-no?authuser=0',
    'https://lh3.googleusercontent.com/pw/AIL4fc9CKQw5AmNjup48d26B0oWNTr1DgwE51LawRfME-DGSGFg5kz8daT3IrUxAH254p8kU_RJkXtgwk4v9fpE-3040OGmgyO_Z52tLVQObAUez8BFGbwWEazByMv_BBTCKthHJZ5X35pxY0oe3OE4UgACS4A=w162-h165-s-no?authuser=0',
    'https://lh3.googleusercontent.com/pw/AIL4fc87S_Hrbu5qes1JqWhprXSmUGDa4G_PNpGlJ5iIyWfIH-n5tRlL15i7LPVRYtjtVhmo8ZDO1b8whm_BB0hPQQQo85QT2lRTBlfM_lKMFuJaOGoBkzJDCcZSF8BgdtZIeKL7D39HNAWr69yq-9G3vXtRBQ=w162-h165-s-no?authuser=0',
    'https://lh3.googleusercontent.com/pw/AIL4fc8GTy2a7Nb7Zknf6vxnPu-EChGHtNXbTx3wwaJWHhN0R4tlzluOlTDEl0s5LTC_FhbPI-ZZQHsY4EamhGILxnnFWWu9D5jTCSnoO1IyPC0riADE50xwR_Vb8AbEk7LhXKRkBOLN1F_fnbALw8PFDIMDPw=w162-h165-s-no?authuser=0',
    'https://lh3.googleusercontent.com/pw/AIL4fc-roBS3-QhizzkzN2rE41QFV31yLjYAfsZkNZ9kaIX2iZIoL6p6JgUsodS4v8Cw6NMHkkPptDLzbHnQprYolvcDIQR1I0S5YVGPSYbWszyPTYG1yTzv2yHaaXNoAWVVWXYOQy5eYRglVXM8uIiONz-Wvg=w329-h165-s-no?authuser=0',
    'https://lh3.googleusercontent.com/pw/AIL4fc9OwzxvBw15LiGR60TmJtoOWMvIdK0YeoOkY-UxxLb_MO2ft1U7vSVopAsv0G-OyhEZp0MxB80G-wf5pdeI_MYwh4vNYNvBZ1T88pgUs-i_rLnvkHIbAed0Ka72mK1Sub-dciNDI51lb1j71qt0NrWKJA=w162-h80-s-no?authuser=0',
    'https://lh3.googleusercontent.com/pw/AIL4fc92rqk5GMIrGnJkEqaJMEg7lwzKjAffSBe6I5_5NbfmJct2KjWu5naBOHyAOdfHO4u2eNfQp-znNCqo-lXVmOH_MMSiz08jKtu301GHFe1hfK_uTwtJkSRrg5DbkRVVLNX1zEyVFFfV15FYYYIRk-rYaA=w162-h80-s-no?authuser=0',
    'https://lh3.googleusercontent.com/pw/AIL4fc9CKQw5AmNjup48d26B0oWNTr1DgwE51LawRfME-DGSGFg5kz8daT3IrUxAH254p8kU_RJkXtgwk4v9fpE-3040OGmgyO_Z52tLVQObAUez8BFGbwWEazByMv_BBTCKthHJZ5X35pxY0oe3OE4UgACS4A=w162-h165-s-no?authuser=0',
    'https://lh3.googleusercontent.com/pw/AIL4fc87S_Hrbu5qes1JqWhprXSmUGDa4G_PNpGlJ5iIyWfIH-n5tRlL15i7LPVRYtjtVhmo8ZDO1b8whm_BB0hPQQQo85QT2lRTBlfM_lKMFuJaOGoBkzJDCcZSF8BgdtZIeKL7D39HNAWr69yq-9G3vXtRBQ=w162-h165-s-no?authuser=0',
    'https://lh3.googleusercontent.com/pw/AIL4fc8GTy2a7Nb7Zknf6vxnPu-EChGHtNXbTx3wwaJWHhN0R4tlzluOlTDEl0s5LTC_FhbPI-ZZQHsY4EamhGILxnnFWWu9D5jTCSnoO1IyPC0riADE50xwR_Vb8AbEk7LhXKRkBOLN1F_fnbALw8PFDIMDPw=w162-h165-s-no?authuser=0',

    'https://res.cloudinary.com/nifty-gateway/video/upload/v1618196543/Pak/ACube.png',
  ];

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.onPrimary,
        // appBar: CustomAppBar(
        //   height: getVerticalSize(
        //     90,
        //   ),
        //   leadingWidth: 360,
        //   leading: CustomImageView(
        //     svgPath: ImageConstant.imgMenu,
        //     height: getSize(
        //       80,
        //     ),
        //     width: getSize(
        //       80,
        //     ),
        //     margin: getMargin(
        //       left: 16,
        //       top: 7,
        //       right: 302,
        //       bottom: 7,
        //     ),
        //   ),
        // ),
        body: SizedBox(
          width: double.maxFinite,
          child: Padding(
            padding: getPadding(
              top: 20,
              left: 5,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppbarIconbutton(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 7, bottom: 7),
                    onTap: () {
                      Get.back();
                    }),
                CustomSearchView(
                  onTap: () {
                    Get.toNamed(AppRoutes.dashboardTwoScreen);
                  },
                  margin: getMargin(
                    top: 20,
                    left: 16,
                    right: 15,
                  ),
                  controller: controller.searchController,
                  hintText: "lbl_search".tr,
                  hintStyle: CustomTextStyles.bodyLargeGray400,
                  textStyle: CustomTextStyles.bodyLargeGray400,
                  prefix: Container(
                    margin: getMargin(
                      left: 12,
                      top: 12,
                      right: 10,
                      bottom: 12,
                    ),
                    child: CustomImageView(
                      svgPath: ImageConstant.imgIcons24Search1,
                    ),
                  ),
                  prefixConstraints: BoxConstraints(
                    maxHeight: getVerticalSize(
                      40,
                    ),
                  ),
                  suffix: Padding(
                    padding: EdgeInsets.only(
                      right: getHorizontalSize(
                        15,
                      ),
                    ),
                    child: IconButton(
                      onPressed: () {
                        controller.searchController.clear();
                      },
                      icon: Icon(
                        Icons.clear,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ),
                  filled: true,
                  fillColor: theme.colorScheme.onPrimary,
                  contentPadding: getPadding(
                    top: 10,
                    right: 30,
                    bottom: 10,
                  ),
                ),
                // Align(
                //   alignment: Alignment.centerRight,
                //   child: SizedBox(
                //     height: getVerticalSize(
                //       60,
                //     ),
                //     child: Obx(
                //       () => ListView.separated(
                //         padding: getPadding(
                //           left: 16,
                //           top: 22,
                //         ),
                //         scrollDirection: Axis.horizontal,
                //         separatorBuilder: (
                //           context,
                //           index,
                //         ) {
                //           return SizedBox(
                //             width: getHorizontalSize(
                //               10,
                //             ),
                //           );
                //         },
                //         itemCount: controller.dashboardOneModelObj.value
                //             .dashboardOneItemList.value.length,
                //         itemBuilder: (context, index) {
                //           DashboardOneItemModel model = controller
                //               .dashboardOneModelObj
                //               .value
                //               .dashboardOneItemList
                //               .value[index];
                //           return DashboardOneItemWidget(
                //             model,
                //           );
                //         },
                //       ),
                //     ),
                //   ),
                // ),
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
                    indent: getHorizontalSize(
                      16,
                    ),
                    endIndent: getHorizontalSize(
                      16,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 19,
                    top: 22,
                    right: 16,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 1,
                        ),
                        child: Text(
                          "lbl_explore".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                      CustomImageView(
                        onTap: () {},
                        svgPath: ImageConstant.imgRefresh1,
                        height: getSize(
                          24,
                        ),
                        width: getSize(
                          24,
                        ),
                        margin: getMargin(
                          bottom: 1,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    // height: getVerticalSize(
                    //   675,
                    // ),
                    // width: getHorizontalSize(
                    //   329,
                    // ),
                    margin: getMargin(
                      top: 20,
                      bottom: 5,
                      right: 10
                    ),
                    child:  MasonryGridView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: _NFTImgurls.length,
                            gridDelegate:
                                const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3),
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.fromLTRB(4.0,5,0,0),
                                child: InkWell(
                                  onTap: (){
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return Dialog(
                                          // backgroundColor: Color(0xff45536A),
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                          elevation: 0,
                                          insetPadding: EdgeInsets.fromLTRB(0,0,0,0),
                                          child: Image.network(_NFTImgurls[index],fit: BoxFit.cover,filterQuality: FilterQuality.high,),
                                        );
                                      },
                                    );
                                  },
                                  onLongPress: (){
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return Dialog(
                                          // backgroundColor: Color(0xff45536A),
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                          elevation: 0,
                                          insetPadding: EdgeInsets.fromLTRB(0,0,0,0),
                                          child: Image.network(_NFTImgurls[index],fit: BoxFit.cover,filterQuality: FilterQuality.high,),
                                        );
                                      },
                                    );
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child:
                                    // CachedNetworkImage(
                                    //   imageUrl:_NFTImgurls[index] ,
                                    //   fit: BoxFit.cover,
                                    //   // alignment: Alignment(-.5, -.5),
                                    //   filterQuality: FilterQuality.high,
                                    //   imageBuilder: (context, imageProvider) => Container(
                                    //     decoration: BoxDecoration(
                                    //       image: DecorationImage(
                                    //           image: imageProvider,
                                    //           fit: BoxFit.cover,
                                    //           colorFilter:
                                    //           ColorFilter.mode(Colors.red, BlendMode.colorBurn)),
                                    //     ),
                                    //   ),
                                    //   // placeholder: (context, url) => CircularProgressIndicator(),
                                    //   errorWidget: (context, url, error) => Icon(Icons.error),
                                    // ),

                                    Image.network(_NFTImgurls[index],filterQuality: FilterQuality.high,fit: BoxFit.cover,),
                                  ),
                                ),
                              );
                            })

                        //     StaggeredGridView.countBuilder(
                        //   shrinkWrap: true,
                        //   primary: false,
                        //   crossAxisCount: 3,
                        //   crossAxisSpacing: getHorizontalSize(
                        //     4,
                        //   ),
                        //   mainAxisSpacing: getHorizontalSize(
                        //     4,
                        //   ),
                        //   staggeredTileBuilder: (index) {
                        //     return StaggeredTile.fit(1);
                        //   },
                        //   itemCount: controller.dashboardOneModelObj.value
                        //       .dashboardOne1ItemList.value.length,
                        //   itemBuilder: (context, index) {
                        //     DashboardOne1ItemModel model = controller
                        //         .dashboardOneModelObj
                        //         .value
                        //         .dashboardOne1ItemList
                        //         .value[index];
                        //     return DashboardOne1ItemWidget(
                        //       model,
                        //     );
                        //   },
                        // ),

                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

  }
   Widget buildImageCard(int index) => Card(
     margin: EdgeInsets.zero,
     shape: RoundedRectangleBorder(
       borderRadius: BorderRadius.circular(12),
     ),
     child: Container(
       decoration: BoxDecoration(
         // color: Colors.grey[850],
         borderRadius: BorderRadius.only(
             topLeft: Radius.circular(12),
             topRight: Radius.circular(12),
             bottomLeft: Radius.circular(12),
             bottomRight: Radius.circular(12)),
         // boxShadow: [
         //   BoxShadow(
         //       color: Colors.black,
         //       offset: Offset(5.0, 5.0),
         //       blurRadius: 15.0,
         //       spreadRadius: 1.0),
         // ],
       ),
       child: ClipRRect(
         borderRadius: BorderRadius.circular(12),
         child: Image.network(_NFTImgurls[index]),
       ),
     ),
   );
}
