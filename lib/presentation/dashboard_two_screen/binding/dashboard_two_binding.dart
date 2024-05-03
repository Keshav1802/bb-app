import '../controller/dashboard_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DashboardTwoScreen.
///
/// This class ensures that the DashboardTwoController is created when the
/// DashboardTwoScreen is first loaded.
class DashboardTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardTwoController());
  }
}
