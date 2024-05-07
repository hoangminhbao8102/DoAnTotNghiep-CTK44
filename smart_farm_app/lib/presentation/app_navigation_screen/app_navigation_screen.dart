import 'package:flutter/material.dart';
import '../../core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: AppDecoration.fillWhiteA,
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Log in",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.logInScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Register",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.registerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Forgot password",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.forgotPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Forgot password phone",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.forgotPasswordPhoneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Forgot password email",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.forgotPasswordEmailScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "OTP phone",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.otpPhoneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "OTP email",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.otpEmailScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Set password",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.setPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home page",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.homePage),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Information",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.informationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Livestock",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.livestockScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Info livestock",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.infoLivestockScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Create farm",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.createFarmScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Info all farm",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.infoAllFarmScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Update farm",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.updateFarmScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Update info farm",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.updateInfoFarmScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Info account",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.infoAccountScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Info farm",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.infoFarmScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Setting",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.settingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Update info account",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.updateInfoAccountScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Change password",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.changePasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Find product",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.findProductScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Info product",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.infoProductScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Buyer product",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.buyerInformationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Notification",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.notificationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Cart",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.cartScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Satististical",
                          onTapScreenTitle: () => onTapScreenTitle(context, AppRoutes.statisticalScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillWhiteA,
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: theme.colorScheme.secondaryContainer.withOpacity(1),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: appTheme.blueGray400,
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: theme.colorScheme.secondaryContainer.withOpacity(1),
          )
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(BuildContext context, {required String screenTitle, Function? onTapScreenTitle }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle?.call();
      },
      child: Container(
        decoration: AppDecoration.fillWhiteA,
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: theme.colorScheme.secondaryContainer.withOpacity(1),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: appTheme.blueGray400,
            )
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(BuildContext context, String routeName) {
    Navigator.pushNamed(context, routeName);
  }
}
