import '../controller/dashboard_controller.dart';
import '../models/dashboard_item_model.dart';
import 'package:bb_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DashboardItemWidget extends StatelessWidget {
  DashboardItemWidget(
    this.dashboardItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DashboardItemModel dashboardItemModelObj;

  var controller = Get.find<DashboardController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getVerticalSize(
        108,
      ),
      width: getHorizontalSize(
        100,
      ),
      child: InkWell(
        onTap: (){
          Get.toNamed(AppRoutes.dashboardThreeScreen);
        },
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Opacity(
              opacity: 0.1,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: getSize(
                    100,
                  ),
                  width: getSize(
                    100,
                  ),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primary.withOpacity(0.39),
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        50,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: EdgeInsets.all(0),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: theme.colorScheme.primary,
                    width: getHorizontalSize(
                      1,
                    ),
                  ),
                  borderRadius: BorderRadiusStyle.circleBorder50,
                ),
                child: Container(
                  height: getSize(
                    100,
                  ),
                  width: getSize(
                    100,
                  ),
                  padding: getPadding(
                    all: 8,
                  ),
                  decoration: AppDecoration.outline.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder50,
                  ),
                  child: Stack(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse4,
                        height: getSize(
                          84,
                        ),
                        width: getSize(
                          84,
                        ),
                        radius: BorderRadius.circular(
                          getHorizontalSize(
                            42,
                          ),
                        ),
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
