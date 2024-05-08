import 'package:flutter/material.dart';
import 'package:smart_farm_app/data/api/api_client.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/cart_screen/cart_screen.dart';
import '../presentation/change_password_screen/change_password_screen.dart';
import '../presentation/create_farm_screen/create_farm_screen.dart';
import '../presentation/find_product_screen/find_product_screen.dart';
import '../presentation/forgot_password_gmail_screen/forgot_password_gmail_screen.dart';
import '../presentation/forgot_password_phone_screen/forgot_password_phone_screen.dart';
import '../presentation/forgot_password_screen/forgot_password_screen.dart';
import '../presentation/home_page/home_page.dart';
import '../presentation/info_account_screen/info_account_screen.dart';
import '../presentation/info_all_farm_screen/info_all_farm_screen.dart';
import '../presentation/info_farm_screen/info_farm_screen.dart';
import '../presentation/info_livestock_screen/info_livestock_screen.dart';
import '../presentation/info_product_screen/info_product_screen.dart';
import '../presentation/information_screen/information_screen.dart';
import '../presentation/livestock_screen/livestock_screen.dart';
import '../presentation/log_in_screen/log_in_screen.dart';
import '../presentation/notification_screen/notification_screen.dart';
import '../presentation/otp_email_screen/otp_email_screen.dart';
import '../presentation/otp_phone_screen/otp_phone_screen.dart';
import '../presentation/register_screen/register_screen.dart';
import '../presentation/set_password_screen/set_password_screen.dart';
import '../presentation/setting_screen/setting_screen.dart';
import '../presentation/statistical_screen/statistical_screen.dart';
import '../presentation/update_farm_screen/update_farm_screen.dart';
import '../presentation/update_info_account_screen/update_info_account_screen.dart';
import '../presentation/update_info_farm_screen/update_info_farm_screen.dart';
// ignore_for_file: must_be_immutable

class AppRoutes {
  static const String logInScreen = '/log_in_screen';

  static const String registerScreen = '/register_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String forgotPasswordPhoneScreen = '/forgot_password_phone_screen';

  static const String forgotPasswordEmailScreen = '/forgot_password_email_screen';

  static const String otpPhoneScreen = '/otp_phone_screen';

  static const String otpEmailScreen = '/otp_email_screen';

  static const String setPasswordScreen = '/set_password_screen';

  static const String homePage = '/home_page';

  static const String informationScreen = '/information_screen';

  static const String livestockScreen ='/livestock_screen';

  static const String infoLivestockScreen ='/info_livestock_screen';

  static const String createFarmScreen ='/create_farm_screen';

  static const String infoAllFarmScreen ='/info_all_farm_screen';

  static const String updateFarmScreen ='/update_farm_screen';

  static const String updateInfoFarmScreen ='/update_info_farm_screen';

  static const String infoAccountScreen ='/info_account_screen';

  static const String infoFarmScreen ='/info_farm_screen';

  static const String settingScreen = '/setting_screen';

  static const String updateInfoAccountScreen ='/update_info_account_screen';

  static const String changePasswordScreen ='/change_password_screen';

  static const String findProductScreen ='/find_product_screen';

  static const String infoProductScreen ='/info_product_screen';

  static const String buyerInformationScreen ='/buyer_information_screen';

  static const String notificationScreen = '/notification_screen';

  static const String cartScreen = '/cart_screen';

  static const String statisticalScreen = '/statistical_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    logInScreen: (context) => LogInScreen(apiClient: APIClient()),
    registerScreen: (context) => RegisterScreen(),
    forgotPasswordScreen: (context) => ForgotPasswordScreen(),
    forgotPasswordPhoneScreen: (context) => ForgotPasswordPhoneScreen(),
    forgotPasswordEmailScreen: (context) => ForgotPasswordEmailScreen(),
    otpPhoneScreen: (context) => OtpPhoneScreen(),
    otpEmailScreen: (context) => OtpEmailScreen(),
    setPasswordScreen: (context) => SetPasswordScreen(),
    homePage: (context) => HomePage(),
    informationScreen: (context) => InformationScreen(),
    livestockScreen: (context) => LivestockScreen(),
    infoLivestockScreen: (context) => InfoLivestockScreen(),
    createFarmScreen: (context) => CreateFarmScreen(),
    infoAllFarmScreen: (context) => InfoAllFarmScreen(),
    updateFarmScreen: (context) => UpdateFarmScreen(),
    updateInfoFarmScreen: (context) => UpdateInfoFarmScreen(),
    infoAccountScreen: (context) => InfoAccountScreen(),
    infoFarmScreen: (context) => InfoFarmScreen(),
    settingScreen: (context) => SettingScreen(),
    updateInfoAccountScreen: (context) => UpdateInfoAccountScreen(),
    changePasswordScreen: (context) => ChangePasswordScreen(),
    findProductScreen: (context) => FindProductScreen(),
    infoProductScreen: (context) => InfoProductScreen(),
    notificationScreen: (context) => NotificationScreen(),
    cartScreen: (context) => CartScreen(),
    statisticalScreen:(context) => StatisticalScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => LogInScreen(apiClient: APIClient())
  };
}
