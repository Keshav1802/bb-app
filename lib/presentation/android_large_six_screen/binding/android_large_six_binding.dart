import '../controller/android_large_six_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AndroidLargeSixScreen.
///
/// This class ensures that the AndroidLargeSixController is created when the
/// AndroidLargeSixScreen is first loaded.
class AndroidLargeSixBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AndroidLargeSixController());
  }
}
