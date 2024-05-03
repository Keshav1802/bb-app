import 'package:bb_app/core/app_export.dart';
import 'package:bb_app/presentation/dashboard_three_screen/models/dashboard_three_model.dart';

/// A controller class for the DashboardThreeScreen.
///
/// This class manages the state of the DashboardThreeScreen, including the
/// current dashboardThreeModelObj
class DashboardThreeController extends GetxController {
  Rx<DashboardThreeModel> dashboardThreeModelObj = DashboardThreeModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  onSelected(dynamic value) {
    for (var element in dashboardThreeModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    dashboardThreeModelObj.value.dropdownItemList.refresh();
  }
}
