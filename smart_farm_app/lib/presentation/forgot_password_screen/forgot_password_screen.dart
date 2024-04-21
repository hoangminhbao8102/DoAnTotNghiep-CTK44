import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_outlined_button.dart';

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
            top: 99.v,
            right: 60.h,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgKisspngCompute,
                height: 205.v,
                width: 201.h,
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 100.adaptSize,
                      width: 100.adaptSize,
                      padding: EdgeInsets.symmetric(
                        horizontal: 11.h,
                        vertical: 12.v,
                      ),
                      decoration: AppDecoration.fillWhiteA.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder15,
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imagePhoneCall,
                        height: 75.adaptSize,
                        width: 75.adaptSize,
                        alignment: Alignment.center,
                      ),
                    ),
                    Container(
                      height: 100.adaptSize,
                      width: 100.adaptSize,
                      padding: EdgeInsets.symmetric(
                        horizontal: 11.h,
                        vertical: 12.v,
                      ),
                      decoration: AppDecoration.fillWhiteA.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder15,
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imageArroba,
                        height: 75.adaptSize,
                        width: 75.adaptSize,
                        alignment: Alignment.center,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20.v),
              CustomOutlinedButton(
                text: "TIẾP TỤC",
                margin: EdgeInsets.only(
                  left: 35.h,
                  right: 45.h,
                ),
                buttonTextStyle: theme.textTheme.titleMedium!,
                onPressed: () {
                  onTapContinue(context);
                },
              ),
              SizedBox(height: 5.v)
            ],
          ),
        ),
      ),
    );
  }

  onTapContinue(BuildContext context){
    Navigator.pushNamed(context, AppRoutes.forgotPasswordPhoneScreen);
  }
}