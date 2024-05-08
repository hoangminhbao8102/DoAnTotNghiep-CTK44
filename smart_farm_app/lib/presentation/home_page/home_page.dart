import 'package:flutter/material.dart';
import '../../presentation/cart_screen/cart_screen.dart';
import '../../presentation/information_screen/information_screen.dart';
import '../../presentation/notification_screen/notification_screen.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_large_primary.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../find_product_screen/find_product_screen.dart';
import '../info_account_screen/info_account_screen.dart';
import '../setting_screen/setting_screen.dart';
import '../statistical_screen/statistical_screen.dart';
import 'widgets/userprofile_item_widget.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppbar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 7.h,
            vertical: 6.v,
          ),
          child: Column(
            children: [
              _buildColumnLivestockTypes(context),
              SizedBox(height: 14.v),
              Text(
                "CÁC SẢN PHẨM",
                style: CustomTextStyles.titleMediumRobotoSecondaryContainerLarge,
              ),
              SizedBox(height: 17.v),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(left: 21.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 3.v),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 9.h,
                                vertical: 10.v,
                              ),
                              decoration: AppDecoration.outlinePrimary.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder15,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 1.v),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      height: 100.v,
                                      width: 125.h,
                                      decoration: BoxDecoration(
                                        color: appTheme.blueGray100
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 9.v),
                                  Container(
                                    width: 100.h,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 5.h,
                                      vertical: 1.v,
                                    ),
                                    decoration: AppDecoration.white.copyWith(
                                      borderRadius: BorderRadiusStyle.circleBorder10
                                    ),
                                    child: Text(
                                      "TÊN SẢN PHẨM",
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                  SizedBox(height: 11.v),
                                  _buildRowCategory(context, category: ""),
                                  SizedBox(height: 9.v),
                                  _buildRowPrice(context, price: 0),
                                  SizedBox(height: 10.v),
                                  _buildWatchDetail(context)
                                ],
                              ),
                            ),
                            SizedBox(height: 20.v),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 9.h,
                                vertical: 10.v,
                              ),
                              decoration: AppDecoration.outlinePrimary.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder15,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 1.v),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      height: 100.v,
                                      width: 125.h,
                                      decoration: BoxDecoration(
                                        color: appTheme.blueGray100
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 9.v),
                                  Container(
                                    width: 100.h,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 5.h,
                                      vertical: 1.v,
                                    ),
                                    decoration: AppDecoration.white.copyWith(
                                      borderRadius: BorderRadiusStyle.circleBorder10
                                    ),
                                    child: Text(
                                      "TÊN SẢN PHẨM",
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                  SizedBox(height: 11.v),
                                  _buildRowCategory(context, category: ""),
                                  SizedBox(height: 9.v),
                                  _buildRowPrice(context, price: 0),
                                  SizedBox(height: 10.v),
                                  _buildWatchDetail(context)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(top: 3.v),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 9.h,
                                vertical: 10.v,
                              ),
                              decoration: AppDecoration.outlinePrimary.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder15,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 1.v),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      height: 100.v,
                                      width: 125.h,
                                      decoration: BoxDecoration(
                                        color: appTheme.blueGray100
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 9.v),
                                  Container(
                                    width: 100.h,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 5.h,
                                      vertical: 1.v,
                                    ),
                                    decoration: AppDecoration.white.copyWith(
                                      borderRadius: BorderRadiusStyle.circleBorder10
                                    ),
                                    child: Text(
                                      "TÊN SẢN PHẨM",
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                  SizedBox(height: 11.v),
                                  _buildRowCategory(context, category: ""),
                                  SizedBox(height: 9.v),
                                  _buildRowPrice(context, price: 0),
                                  SizedBox(height: 10.v),
                                  _buildWatchDetail(context)
                                ],
                              ),
                            ),
                            SizedBox(height: 20.v),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 9.h,
                                vertical: 10.v,
                              ),
                              decoration: AppDecoration.outlinePrimary.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder15,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 1.v),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      height: 100.v,
                                      width: 125.h,
                                      decoration: BoxDecoration(
                                        color: appTheme.blueGray100
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 9.v),
                                  Container(
                                    width: 100.h,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 5.h,
                                      vertical: 1.v,
                                    ),
                                    decoration: AppDecoration.white.copyWith(
                                      borderRadius: BorderRadiusStyle.circleBorder10
                                    ),
                                    child: Text(
                                      "TÊN SẢN PHẨM",
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                  SizedBox(height: 11.v),
                                  _buildRowCategory(context, category: ""),
                                  SizedBox(height: 9.v),
                                  _buildRowPrice(context, price: 0),
                                  SizedBox(height: 10.v),
                                  _buildWatchDetail(context)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: SizedBox(
                          height: 523.v,
                          child: VerticalDivider(
                            width: 4.h,
                            thickness: 4.v,
                            endIndent: 483.h,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottombar(context),
      ),
    );
  }
  
  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 85.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgSetting,
        margin: EdgeInsets.only(
          left: 45.h,
          top: 8.v,
          bottom: 7.v,
        ),
        onTap: () {
          onTapSetting(context);
        },
      ),
      title: AppbarSubtitleLargePrimary(
        text: "SMART FARM APP",
        margin: EdgeInsets.only(left: 35.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgCart,
          margin: EdgeInsets.only(
            left: 15.h,
            top: 7.v,
            right: 8.h,
          ),
          onTap: () {
            onTapCart(context);
          },
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgBell,
          margin: EdgeInsets.only(
            left: 10.h,
            top: 7.v,
            right: 23.h,
          ),
          onTap: () {
            onTapBell(context);
          },
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildColumnLivestockTypes(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 15.h,
        right: 5.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 46.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlinePrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder30
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "CÁC LOẠI VẬT NUÔI",
            style: CustomTextStyles.titleSmallInter,
          ),
          SizedBox(height: 21.v),
          SizedBox(
            height: 95.v,
            child: ListView.separated(
              padding: EdgeInsets.only(left: 3.h),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return UserprofileItemWidget();
              }, 
              separatorBuilder: (context, index) {
                return SizedBox(width: 40.h);
              },  
              itemCount: 3,
            ),
          ),
        ],
      ),
    );
  }
  
  /// Section Widget
  Widget _buildWatchDetail(BuildContext context) {
    return CustomElevatedButton(
      width: 120.h,
      text: "XEM CHI TIẾT",
      buttonStyle: CustomButtonStyles.fillPrimary,
      onPressed: () {
        onTapWatchDetail(context);
      },
      alignment: Alignment.center,
    );
  }

  /// Common Widget
  Widget _buildRowCategory(BuildContext context, { required String category }) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 2.v),
          child: Text(
            "Loại: ",
            style: CustomTextStyles.bodySmallInterSecondaryContainer.copyWith(
              color: theme.colorScheme.secondaryContainer.withOpacity(1),
            ),
          ),
        ),
        Container(
          width: 100.h,
          margin: EdgeInsets.only(left: 2.h),
          padding: EdgeInsets.symmetric(
            horizontal: 8.h,
            vertical: 1.v
          ),
          decoration: AppDecoration.white.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder10
          ),
          child: Text(
            category,
            style: theme.textTheme.bodySmall!.copyWith(
              color: theme.colorScheme.onPrimaryContainer,
            ),
          ),
        )
      ]
    );
  } 

  /// Common Widget
  Widget _buildRowPrice(BuildContext context, { required double price }) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 4.v),
          child: Text(
            "Giá bán: ",
            style: CustomTextStyles.bodySmallInterSecondaryContainer.copyWith(
              color: theme.colorScheme.secondaryContainer.withOpacity(1),
            ),
          ),
        ),
        Container(
          width: 62.h,
          margin: EdgeInsets.only(left: 1.h),
          padding: EdgeInsets.symmetric(
            horizontal: 8.h,
            vertical: 2.v
          ),
          decoration: AppDecoration.white.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder10
          ),
          child: Text(
            price as String,
            style: theme.textTheme.bodySmall!.copyWith(
              color: theme.colorScheme.onPrimaryContainer,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 2.h,
            bottom: 3.v,
          ),
          child: Text(
            "Đ",
            style: CustomTextStyles.bodySmallInterSecondaryContainer.copyWith(
              color: theme.colorScheme.secondaryContainer.withOpacity(1),
            ),
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildBottombar(BuildContext context) {
    final navigator = Navigator.of(context);
    return CustomButtonBar(
      onChanged: (BottomBarEnum type) {
        final currentRoute = getCurrentRoute(type);
        // Không cần kiểm tra điều kiện nếu bạn biết getCurrentRoute(type) không bao giờ trả về null
        navigator.pushNamed(currentRoute);
      },
    );
  }
  
  /// Handing route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Information:
        return AppRoutes.informationScreen;
      case BottomBarEnum.Product:
        return AppRoutes.findProductScreen;
      case BottomBarEnum.Statistic:
        return AppRoutes.statisticalScreen;
      case BottomBarEnum.Account:
        return AppRoutes.infoAccountScreen;
      default:
        return "/";
    }
  }
  
  /// Handing page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.informationScreen:
        return InformationScreen();
      case AppRoutes.findProductScreen:
        return FindProductScreen();
      case AppRoutes.statisticalScreen:
        return StatisticalScreen();
      case AppRoutes.infoAccountScreen:
        return InfoAccountScreen();
      default:
        return DefaultWidget();
    }
  }
   

  /// Navigates to the settingScreen when the action is triggered
  onTapSetting(BuildContext context) {
    Navigator.push(
      context, 
      MaterialPageRoute(builder: (context) => SettingScreen())
    ); // Điều hướng đến màn hình SettingScreen
  }

  /// Navigates to the cartScreen when the action is triggered
  onTapCart(BuildContext context) {
    Navigator.push(
      context, MaterialPageRoute(builder: (context) => CartScreen())
    );
  }
  
  /// Navigates to the notificationScreen when the action is triggered
  onTapBell(BuildContext context) {
    Navigator.push(
      context, MaterialPageRoute(builder: (context) => NotificationScreen())
    );
  }

  /// Navigates to the infoProductScreen when the action is triggered.
  onTapWatchDetail(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.infoProductScreen);
  }
}