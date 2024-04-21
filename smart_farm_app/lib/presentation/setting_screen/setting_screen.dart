import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_outlined_button.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppbar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 32.h,
            vertical: 15.v,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage,
                height: 94.v,
                width: 94.h,
                radius: BorderRadius.circular(46.h),
              ),
              SizedBox(height: 28.v),
              Text(
                "Minh Bảo",
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 10.v),
              Text(
                "Minh Bảo",
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 6.v),
              Text(
                "Minh Bảo",
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 40.v),
              CustomOutlinedButton(
                height: 65.v,
                text: "CẬP NHẬT THÔNG TIN CÁ NHÂN",
                margin: EdgeInsets.only(right: 6.h),
                leftIcon: Container(
                  margin: EdgeInsets.only(right: 30.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgEditOnsecondarycontainer,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                ),
                buttonStyle: CustomButtonStyles.outlinePrimaryTL302,
                buttonTextStyle: CustomTextStyles.titleMediumSecondaryContainer,
              ),
              SizedBox(height: 30.v),
              CustomOutlinedButton(
                height: 65.v,
                text: "ĐỔI MẬT KHẨU",
                margin: EdgeInsets.only(right: 6.h),
                leftIcon: Container(
                  margin: EdgeInsets.only(right: 30.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgGrid,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                ),
                buttonStyle: CustomButtonStyles.outlinePrimaryTL302,
                buttonTextStyle: CustomTextStyles.titleMediumSecondaryContainer,
              ),
              SizedBox(height: 35.v),
              CustomOutlinedButton(
                height: 65.v,
                text: "ĐĂNG XUẤT",
                margin: EdgeInsets.only(right: 6.h),
                leftIcon: Container(
                  margin: EdgeInsets.only(right: 30.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgThumbsupRedA700,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                ),
                buttonStyle: CustomButtonStyles.outlinePrimaryTL302,
                buttonTextStyle: CustomTextStyles.titleMediumSecondaryContainer,
              ),
            ],
          ),
        ),
      )
    );
  }

  /// Section widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 57.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftOnprimary,
        margin: EdgeInsets.only(
          left: 33.h,
          top: 16.v,
          bottom: 15.v,
        ),
        onTap: () {
          onTapArrowleftone(context);
        },
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "CÀI ĐẶT",
      ),
    );
  }

  /// Navigates back to the previous
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}