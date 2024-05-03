import 'package:bb_app/core/app_export.dart';
import 'package:bb_app/presentation/android_large_two_screen/models/android_large_two_model.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

/// A controller class for the AndroidLargeTwoScreen.
///
/// This class manages the state of the AndroidLargeTwoScreen, including the
/// current androidLargeTwoModelObj
class AndroidLargeTwoController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController enterpromotionlController = TextEditingController();

  TextEditingController enterfacebookliController = TextEditingController();

  TextEditingController enterinstagramlController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  TextEditingController enterbrandinstaController = TextEditingController();

  TextEditingController enternumberofblController = TextEditingController();

  TextEditingController cityController = TextEditingController();

  TextEditingController selecttargetgenController = TextEditingController();

  TextEditingController enterjobhashtagController = TextEditingController();

  TextEditingController dateController = TextEditingController();

  TextEditingController selecttasksController = TextEditingController();

  TextEditingController enterjobsubmissController = TextEditingController();

  Rx<AndroidLargeTwoModel> androidLargeTwoModelObj = AndroidLargeTwoModel().obs;

  Rx<bool> isCheckbox = false.obs;
  Rx<bool> isCheckbox1 = false.obs;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    enterpromotionlController.dispose();
    enterfacebookliController.dispose();
    enterinstagramlController.dispose();
    nameController.dispose();
    enterbrandinstaController.dispose();
    enternumberofblController.dispose();
    cityController.dispose();
    selecttargetgenController.dispose();
    enterjobhashtagController.dispose();
    dateController.dispose();
    selecttasksController.dispose();
    enterjobsubmissController.dispose();
  }
}
