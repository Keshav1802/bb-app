import 'package:bb_app/presentation/android_large_one_screen/android_large_one_screen.dart';
import 'package:bb_app/presentation/android_large_one_screen/binding/android_large_one_binding.dart';
import 'package:bb_app/presentation/dashboard_screen/dashboard_screen.dart';
import 'package:bb_app/presentation/dashboard_screen/binding/dashboard_binding.dart';
import 'package:bb_app/presentation/android_large_five_screen/android_large_five_screen.dart';
import 'package:bb_app/presentation/android_large_five_screen/binding/android_large_five_binding.dart';
import 'package:bb_app/presentation/android_large_two_screen/android_large_two_screen.dart';
import 'package:bb_app/presentation/android_large_two_screen/binding/android_large_two_binding.dart';
import 'package:bb_app/presentation/dashboard_one_screen/dashboard_one_screen.dart';
import 'package:bb_app/presentation/dashboard_one_screen/binding/dashboard_one_binding.dart';
import 'package:bb_app/presentation/dashboard_two_screen/dashboard_two_screen.dart';
import 'package:bb_app/presentation/dashboard_two_screen/binding/dashboard_two_binding.dart';
import 'package:bb_app/presentation/dashboard_three_screen/dashboard_three_screen.dart';
import 'package:bb_app/presentation/dashboard_three_screen/binding/dashboard_three_binding.dart';
import 'package:bb_app/presentation/android_large_six_screen/android_large_six_screen.dart';
import 'package:bb_app/presentation/android_large_six_screen/binding/android_large_six_binding.dart';
import 'package:bb_app/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:bb_app/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String androidLargeOneScreen = '/android_large_one_screen';

  static const String dashboardScreen = '/dashboard_screen';

  static const String androidLargeFiveScreen = '/android_large_five_screen';

  static const String androidLargeTwoScreen = '/android_large_two_screen';

  static const String dashboardOneScreen = '/dashboard_one_screen';

  static const String dashboardTwoScreen = '/dashboard_two_screen';

  static const String dashboardThreeScreen = '/dashboard_three_screen';

  static const String androidLargeSixScreen = '/android_large_six_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: androidLargeOneScreen,
      page: () => AndroidLargeOneScreen(),
      bindings: [
        AndroidLargeOneBinding(),
      ],
    ),
    GetPage(
      name: dashboardScreen,
      page: () => DashboardScreen(),
      bindings: [
        DashboardBinding(),
      ],
    ),
    GetPage(
      name: androidLargeFiveScreen,
      page: () => AndroidLargeFiveScreen(),
      bindings: [
        AndroidLargeFiveBinding(),
      ],
    ),
    GetPage(
      name: androidLargeTwoScreen,
      page: () => AndroidLargeTwoScreen(),
      bindings: [
        AndroidLargeTwoBinding(),
      ],
    ),
    GetPage(
      name: dashboardOneScreen,
      page: () => DashboardOneScreen(),
      bindings: [
        DashboardOneBinding(),
      ],
    ),
    GetPage(
      name: dashboardTwoScreen,
      page: () => DashboardTwoScreen(),
      bindings: [
        DashboardTwoBinding(),
      ],
    ),
    GetPage(
      name: dashboardThreeScreen,
      page: () => DashboardThreeScreen(),
      bindings: [
        DashboardThreeBinding(),
      ],
    ),
    GetPage(
      name: androidLargeSixScreen,
      page: () => AndroidLargeSixScreen(),
      bindings: [
        AndroidLargeSixBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => AndroidLargeOneScreen(),
      bindings: [
        AndroidLargeOneBinding(),
      ],
    )
  ];
}
