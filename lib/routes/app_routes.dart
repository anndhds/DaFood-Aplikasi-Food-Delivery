import 'package:anandafood_app/presentation/one_screen/one_screen.dart';
import 'package:anandafood_app/presentation/one_screen/binding/one_binding.dart';
import 'package:anandafood_app/presentation/two_screen/two_screen.dart';
import 'package:anandafood_app/presentation/two_screen/binding/two_binding.dart';
import 'package:anandafood_app/presentation/three_container_screen/three_container_screen.dart';
import 'package:anandafood_app/presentation/three_container_screen/binding/three_container_binding.dart';
import 'package:anandafood_app/presentation/four_screen/four_screen.dart';
import 'package:anandafood_app/presentation/four_screen/binding/four_binding.dart';
import 'package:anandafood_app/presentation/five_screen/five_screen.dart';
import 'package:anandafood_app/presentation/five_screen/binding/five_binding.dart';
import 'package:anandafood_app/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:anandafood_app/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String oneScreen = '/one_screen';

  static const String twoScreen = '/two_screen';

  static const String threePage = '/three_page';

  static const String threeContainerScreen = '/three_container_screen';

  static const String fourScreen = '/four_screen';

  static const String fiveScreen = '/five_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: oneScreen,
      page: () => OneScreen(),
      bindings: [
        OneBinding(),
      ],
    ),
    GetPage(
      name: twoScreen,
      page: () => TwoScreen(),
      bindings: [
        TwoBinding(),
      ],
    ),
    GetPage(
      name: threeContainerScreen,
      page: () => ThreeContainerScreen(),
      bindings: [
        ThreeContainerBinding(),
      ],
    ),
    GetPage(
      name: fourScreen,
      page: () => FourScreen(),
      bindings: [
        FourBinding(),
      ],
    ),
    GetPage(
      name: fiveScreen,
      page: () => FiveScreen(),
      bindings: [
        FiveBinding(),
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
      page: () => OneScreen(),
      bindings: [
        OneBinding(),
      ],
    )
  ];
}
