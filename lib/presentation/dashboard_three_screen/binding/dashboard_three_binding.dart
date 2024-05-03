import '../controller/dashboard_three_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DashboardThreeScreen.
///
/// This class ensures that the DashboardThreeController is created when the
/// DashboardThreeScreen is first loaded.
class DashboardThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardThreeController());
  }
}
