import 'package:bb_app/core/app_export.dart';
import 'package:bb_app/presentation/android_large_one_screen/models/android_large_one_model.dart';
import 'package:bb_app/presentation/dashboard_screen/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart' as dio;
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:async';
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

/// A controller class for the AndroidLargeOneScreen.
///
/// This class manages the state of the AndroidLargeOneScreen, including the
/// current androidLargeOneModelObj
class AndroidLargeOneController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<LoginData> androidLargeOneModelObj = LoginData().obs;

  Rx<bool> isShowPassword = true.obs;

  // Future<LoginData> postRequest() async {
  //   print("tapped");
  //   // var url = 'https://mbnindia.com/webservice/api/login';
  //   var token = "HDJJHJHJHSJHDJAHDAD";
  //
  //   Map<String, String> headers = {
  //     "Content-Type": "application/json",
  //     "User-Agent": "PostmanRuntime/7.30.0",
  //     "Accept": "*/*",
  //     "Accept-Encoding": "gzip, deflate, br",
  //     "Connection": "keep-alive"
  //   };
  //
  //   dio.FormData formData = dio.FormData.fromMap({
  //     'email': emailController.text,
  //     'password': passwordController.text,
  //     'fcm_token': token,
  //   });
  //   print(formData.fields);
  //   // var response = await dio.Dio().post(url,
  //   //     options: dio.Options(
  //   //       headers: {
  //   //         "Content-Type": "application/json",
  //   //         "Accept": "*/*",
  //   //       },
  //   //     ),
  //   //     data: formData);
  //   // print(response.data);
  //   // String jsonsDataString = response.data.toString();
  //   // var jsonObject = jsonDecode(response.toString());
  //   // print(jsonObject.toString());
  //   // if (response.statusCode == 200) {
  //   //   if (LoginData.fromJson(jsonObject).status == 200) {
  //   //     // SharedPreferences prefs = await SharedPreferences.getInstance();
  //   //     // prefs?.setBool("isLoggedIn", true);
  //   //     // setState(() {
  //   //     //   Timer(Duration(seconds: 1), () {
  //   //     //     _btnController.success();
  //   //     //   });
  //   //     // });
  //   //     SharedPreferences pref = await SharedPreferences.getInstance();
  //   //     // var json = jsonDecode(jsonObject);
  //   //     String user = jsonEncode(jsonObject);
  //   //     print(user.toString());
  //   //     pref.setString('userData', user);
  //   //     pref.setBool("isLoggedIn", true);
  //   //     Fluttertoast.showToast(
  //   //         msg: "Login Successful",
  //   //         toastLength: Toast.LENGTH_SHORT,
  //   //         gravity: ToastGravity.CENTER,
  //   //         timeInSecForIosWeb: 1,
  //   //         backgroundColor: Colors.greenAccent,
  //   //         textColor: Colors.black,
  //   //         fontSize: 16.0
  //   //     );
  //   //     Map json1 = jsonDecode(pref.getString('userData')!);
  //   //     var user1 = LoginData.fromJson(json1);
  //   //     print(user1.data);
  //   // Get.toNamed(AppRoutes.dashboardScreen,arguments: user1);
  //   //     // Navigator.of(context).push(MaterialPageRoute(
  //   //     //   builder: (context) => landingPage(
  //   //     //       user1.data.name,
  //   //     //       user1.data.id,
  //   //     //       user1.data.chepterId,
  //   //     //       user1.data.cityId,
  //   //     //       user1.data.chapterDetails ?? "",
  //   //     //       user1.data.chapterUserDetails ?? "",
  //   //     //       user1.data),
  //   //     // ));
  //   //   }
  //   //   else if (LoginData.fromJson(jsonObject).status == 400) {
  //   //     Fluttertoast.showToast(
  //   //         msg: LoginData.fromJson(jsonObject).message,
  //   //         toastLength: Toast.LENGTH_SHORT,
  //   //         gravity: ToastGravity.CENTER,
  //   //         timeInSecForIosWeb: 1,
  //   //         backgroundColor: Colors.redAccent,
  //   //         textColor: Colors.black,
  //   //         fontSize: 16.0
  //   //     );
  //   //     // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //   //     //     content: Text(LoginData.fromJson(jsonObject).message),
  //   //     //     backgroundColor: Colors.redAccent));
  //   //     // setState(() {
  //   //     //   _btnController.error();
  //   //     // });
  //   //   } else if (LoginData.fromJson(jsonObject).data.chepterName == null) {
  //   //     Fluttertoast.showToast(
  //   //         msg: 'Server Error..Please try again after sometime',
  //   //         toastLength: Toast.LENGTH_SHORT,
  //   //         gravity: ToastGravity.CENTER,
  //   //         timeInSecForIosWeb: 1,
  //   //         backgroundColor: Colors.redAccent,
  //   //         textColor: Colors.black,
  //   //         fontSize: 16.0
  //   //     );
  //   //     // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //   //     //     content: Text(
  //   //     //       'Server Error..Please try again after sometime',
  //   //     //       style: SafeGoogleFont(
  //   //     //         'Poppins SemiBold',
  //   //     //         // fontSize: 18 * ffem,
  //   //     //         fontWeight: FontWeight.w400,
  //   //     //         // height: 1.2575 * ffem / fem,
  //   //     //         color: Colors.black,
  //   //     //       ),
  //   //     //     ),
  //   //     //     backgroundColor: Colors.redAccent));
  //   //     // setState(() {
  //   //     //   _btnController.error();
  //   //     // });
  //   //   }
  //   //
  //   //   // print(Logindata.fromJson(jsonObject).message);
  //   //   // print(LoginData.fromJson(jsonObject).toString());
  //   //   // return LoginData.fromJson(
  //   //   //     jsonObject); // you can mapping json object also here
  //   // }
  //
  //
  //   // else {
  //   //   Fluttertoast.showToast(
  //   //       msg: "Sending Message",
  //   //       toastLength: Toast.LENGTH_SHORT,
  //   //       gravity: ToastGravity.CENTER,
  //   //       timeInSecForIosWeb: 1,
  //   //       backgroundColor: Colors.redAccent,
  //   //       textColor: Colors.black,
  //   //       fontSize: 16.0
  //   //   );
  //   //   // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //   //   //   content: Text("Sending Message"),
  //   //   // )); // you can mapping json object also here
  //   // }
  //   return jsonObject;
  //   // return response;
  // }

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }
}
