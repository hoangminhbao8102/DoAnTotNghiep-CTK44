import 'package:flutter/material.dart';
import 'package:smart_farm_app/presentation/info_product_screen/info_product_screen.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../home_page/home_page.dart';

// ignore: must_be_immutable
class HomePageContainerScreen extends StatelessWidget {
  HomePageContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Navigator(
          key: navigatorKey,
          initialRoute: AppRoutes.homePage,
          onGenerateRoute: (routeSetting) => PageRouteBuilder(
            pageBuilder: (ctx, ani, secAni) => getCurrentPage(routeSetting.name!),
            transitionDuration: Duration(seconds: 0),
          ),
        ),
        bottomNavigationBar: _buildBottombar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottombar(BuildContext context) {
    return CustomButtonBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  /// Handing route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Farm:
        return AppRoutes.homePage;
      case BottomBarEnum.Product:
        return AppRoutes.infoProductScreen;
      case BottomBarEnum.Statistic:
        return AppRoutes.statisticalScreen;
      case BottomBarEnum.Information:
        return AppRoutes.infoAccountScreen;
      default:
        return "/";
    }
  }
  
  /// Handing page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.infoProductScreen:
        return InfoProductScreen();
      default:
        return DefaultWidget();
    }
  }
}