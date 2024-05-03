import '../controller/dashboard_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DashboardOneScreen.
///
/// This class ensures that the DashboardOneController is created when the
/// DashboardOneScreen is first loaded.
class DashboardOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardOneController());
  }
}
