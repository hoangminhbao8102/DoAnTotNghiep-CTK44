import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';

class InfoProductScreen extends StatelessWidget {
  const InfoProductScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppbar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 300.v,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: appTheme.blueGray100
                ),
              ),
              SizedBox(height: 6.v),
              _buildRowProductName(context),
              SizedBox(height: 56.v),
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Text(
                  "MÔ TẢ", 
                  style: CustomTextStyles.bodySmallInterSecondaryContainer,
                ),
              ),
              SizedBox(height: 47.v),
              Padding(
                padding: EdgeInsets.only(left: 19.h),
                child: Text(
                  "GIÁ TIỀN: ", 
                  style: CustomTextStyles.bodySmallInterSecondaryContainer,
                ),
              ),
              SizedBox(height: 9.v),
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Row(
                  children: [
                    CustomIconButton(
                      height: 25.adaptSize,
                      width: 25.adaptSize,
                      child: CustomImageView(imagePath: ImageConstant.imgArrowLeft),
                    ),
                    CustomElevatedButton(
                      height: 25.v,
                      width: 60.h,
                      text: "2",
                      margin: EdgeInsets.only(
                        left: 10.h,
                        top: 1.v,
                      ),
                      buttonStyle: CustomButtonStyles.fillBlueGray,
                      buttonTextStyle: CustomTextStyles.bodySmallInterSecondaryContainer,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 6.h,
                        top: 1.v,
                      ),
                      child: CustomIconButton(
                        height: 25.adaptSize,
                        width: 25.adaptSize,
                        child: CustomImageView(imagePath: ImageConstant.ImgOverflowMenu),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 5.v),
              Padding(
                padding: EdgeInsets.only(left: 19.h),
                child: Text(
                  "ĐÁNH GIÁ", 
                  style: CustomTextStyles.bodySmallInterSecondaryContainer
                ),
              ),
              Spacer(flex: 50),
              Padding(
                padding: EdgeInsets.only(left: 19.h),
                child: Text(
                  "BÌNH LUẬN", 
                  style: CustomTextStyles.bodySmallInterSecondaryContainer
                ),
              ),
              Spacer(flex: 49)
            ],
          ),
        ),
        bottomNavigationBar: _buildRowCart(context),
      ),
    );
  }
  
  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 44.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftOnprimary,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 17.v,
          bottom: 14.v,
        ),
        onTap: () {
          onTapArrowleftone(context);
        },
      ),
      centerTitle: true,
      title: AppbarSubtitle(text: "THÔNG TIN SẢN PHẨM"),
    );
  }

  /// Section Widget
  Widget _buildRowProductName(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 19.h,
          right: 5.h,
        ),
        child: Row( 
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 10.h,
                bottom: 14.h,
              ),
              child: Text(
                "TÊN SẢN PHẨM",
                style: CustomTextStyles.bodySmallInterSecondaryContainer,
              ),
            ),
            SizedBox(
              height: 40.v,
              child: VerticalDivider(
                width: 4.h,
                thickness: 4.v,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowCart(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 48.h),
      child: Row( 
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 8.v,
              bottom: 15.v,
            ),
            decoration: AppDecoration.outlinedSmallestPrimary,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgCart,
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 6.v),
                  child: Text(
                    "THÊM VÀO GIỎ HÀNG",
                    style: CustomTextStyles.bodySmallInterSecondaryContainer,
                  ),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              onTapColumnPrice(context);
            },
            child: Container(
              margin: EdgeInsets.only(left: 42.h),
              padding: EdgeInsets.symmetric(
                horizontal: 27.h,
                vertical: 23.v,
              ),
              decoration: AppDecoration.fillPrimary,
              child: Text(
                "MUA NGAY",
                style: theme.textTheme.headlineLarge,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates back to the buyerInformationScreen when the action is triggered
  onTapColumnPrice(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.buyerInformationScreen);
  }
}