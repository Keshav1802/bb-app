import 'package:bb_app/core/app_export.dart';
import 'package:bb_app/presentation/android_large_five_screen/models/android_large_five_model.dart';

/// A controller class for the AndroidLargeFiveScreen.
///
/// This class manages the state of the AndroidLargeFiveScreen, including the
/// current androidLargeFiveModelObj
class AndroidLargeFiveController extends GetxController {
  Rx<AndroidLargeFiveModel> androidLargeFiveModelObj =
      AndroidLargeFiveModel().obs;
}
