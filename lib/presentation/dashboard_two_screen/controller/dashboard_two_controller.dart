import 'package:bb_app/core/app_export.dart';
import 'package:bb_app/presentation/dashboard_two_screen/models/dashboard_two_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the DashboardTwoScreen.
///
/// This class manages the state of the DashboardTwoScreen, including the
/// current dashboardTwoModelObj
class DashboardTwoController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<DashboardTwoModel> dashboardTwoModelObj = DashboardTwoModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
