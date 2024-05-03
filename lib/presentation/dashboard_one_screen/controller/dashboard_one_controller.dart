import 'package:bb_app/core/app_export.dart';
import 'package:bb_app/presentation/dashboard_one_screen/models/dashboard_one_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the DashboardOneScreen.
///
/// This class manages the state of the DashboardOneScreen, including the
/// current dashboardOneModelObj
class DashboardOneController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<DashboardOneModel> dashboardOneModelObj = DashboardOneModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
