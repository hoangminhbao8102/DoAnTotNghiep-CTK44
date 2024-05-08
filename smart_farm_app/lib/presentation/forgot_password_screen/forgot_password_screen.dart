import 'package:flutter/material.dart';
import '../../core/app_export.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen ({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 60.h,
            top: 100.v,
            right: 60.h,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgKisspngCompute,
                height: 205.v,
                width: 200.h,
                radius: BorderRadius.circular(100.h),
              ),
              SizedBox(height: 20.v),
              Text(
                "QUÊN MẬT KHẨU",
                style: theme.textTheme.displayMedium,
              ),
              SizedBox(height: 20.v),
              Text(
                "CHỌN SỐ ĐIỆN THOẠI HAY EMAIL",
                style: CustomTextStyles.titleMediumSecondaryContainerMedium,
              ),
              SizedBox(height: 23.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 35.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 20.h),
                        child: _buildPhoneCall(
                          context,
                          phoneCall: ImageConstant.imagePhoneCall,
                          onTapStackPhoneCall: () {
                            onTapStackPhoneCall(context);
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 20.h),
                        child: _buildEmail(
                          context,
                          arroba: ImageConstant.imageArroba,
                          onTapStackArroba: () {
                            onTapStackArroba(context);
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 5.v)
            ],
          ),
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildPhoneCall(BuildContext context, { required String phoneCall, Function? onTapStackPhoneCall,}) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            onTapStackPhoneCall?.call();
          },
          child: Container(
            height: 100.adaptSize,
            width: 100.adaptSize,
            padding: EdgeInsets.symmetric(
              horizontal: 6.h,
              vertical: 7.v,
            ),
            decoration: AppDecoration.outlineGreen.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder15
            ),
            child: CustomImageView(
              imagePath: phoneCall,
              height: 75.adaptSize,
              width: 75.adaptSize,
              alignment: Alignment.center,
            ),
          ),
        )
      ],
    );
  }

  /// Common widget 
  Widget _buildEmail(BuildContext context, { required String arroba, Function? onTapStackArroba,}) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            onTapStackArroba?.call();
          },
          child: Container(
            height: 100.adaptSize,
            width: 100.adaptSize,
            padding: EdgeInsets.symmetric(
              horizontal: 6.h,
              vertical: 7.v,
            ),
            decoration: AppDecoration.outlineGreen.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder15
            ),
            child: CustomImageView(
              imagePath: arroba,
              height: 75.adaptSize,
              width: 75.adaptSize,
              alignment: Alignment.center,
            ),
          ),
        )
      ],
    );
  }

  /// Navigates back to the forgotPasswordPhoneScreen when the action is triggered
  onTapStackPhoneCall(BuildContext context){
    Navigator.pushNamed(context, AppRoutes.forgotPasswordPhoneScreen);
  }

  /// Navigates back to the forgotPasswordEmailScreen when the action is triggered
  onTapStackArroba(BuildContext context){
    Navigator.pushNamed(context, AppRoutes.forgotPasswordEmailScreen);
  }
}