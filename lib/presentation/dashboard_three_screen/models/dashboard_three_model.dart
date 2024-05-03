import 'package:get/get.dart';
import 'package:bb_app/data/models/selectionPopupModel/selection_popup_model.dart';

/// This class defines the variables used in the [dashboard_three_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DashboardThreeModel {
  Rx<List<SelectionPopupModel>> dropdownItemList = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ]);
}
