import 'package:get/get.dart';
import 'dashboard_one_item_model.dart';
import 'dashboard_one1_item_model.dart';

/// This class defines the variables used in the [dashboard_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DashboardOneModel {
  Rx<List<DashboardOneItemModel>> dashboardOneItemList =
      Rx(List.generate(5, (index) => DashboardOneItemModel()));

  Rx<List<DashboardOne1ItemModel>> dashboardOne1ItemList =
      Rx(List.generate(20, (index) => DashboardOne1ItemModel()));
}
