import 'package:bb_app/core/app_export.dart';
import 'package:bb_app/presentation/android_large_six_screen/models/android_large_six_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AndroidLargeSixScreen.
///
/// This class manages the state of the AndroidLargeSixScreen, including the
/// current androidLargeSixModelObj
class AndroidLargeSixController extends GetxController {
  TextEditingController nameoneController = TextEditingController();

  TextEditingController instagramusernaController = TextEditingController();

  TextEditingController mobilenooneController = TextEditingController();

  TextEditingController emailoneController = TextEditingController();

  TextEditingController cityoneController = TextEditingController();

  TextEditingController zipcodeController = TextEditingController();

  TextEditingController addressoneController = TextEditingController();

  TextEditingController zipcodeoneController = TextEditingController();

  TextEditingController weburlController = TextEditingController();

  TextEditingController weburloneController = TextEditingController();

  TextEditingController weburltwoController = TextEditingController();

  TextEditingController blogurloneController = TextEditingController();

  TextEditingController aboutoneController = TextEditingController();

  TextEditingController genreoneController = TextEditingController();

  TextEditingController addresstwoController = TextEditingController();

  TextEditingController addorrenewmembeController = TextEditingController();

  TextEditingController addressthreeController = TextEditingController();

  Rx<AndroidLargeSixModel> androidLargeSixModelObj = AndroidLargeSixModel().obs;

  @override
  void onClose() {
    super.onClose();
    nameoneController.dispose();
    instagramusernaController.dispose();
    mobilenooneController.dispose();
    emailoneController.dispose();
    cityoneController.dispose();
    zipcodeController.dispose();
    addressoneController.dispose();
    zipcodeoneController.dispose();
    weburlController.dispose();
    weburloneController.dispose();
    weburltwoController.dispose();
    blogurloneController.dispose();
    aboutoneController.dispose();
    genreoneController.dispose();
    addresstwoController.dispose();
    addorrenewmembeController.dispose();
    addressthreeController.dispose();
  }
}
