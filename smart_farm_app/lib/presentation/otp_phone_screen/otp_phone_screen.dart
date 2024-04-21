import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_pin_code_text_field.dart';

class OtpPhoneScreen extends StatelessWidget {
  const OtpPhoneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray100,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 45.h,
            top: 99.v,
            right: 45.h,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgKisspngCompute,
                height: 205.v,
                width: 201.h,
                radius: BorderRadius.circular(
                  100.h,
                ),
              ),
              SizedBox(height: 41.v),
              Text(
                "NHẬP OTP",
                style: theme.textTheme.displayMedium,
              ),
              SizedBox(height: 7.v),
              Container(
                width: 329.h,
                margin: EdgeInsets.only(
                  left: 8.h,
                  right: 2.h,
                ),
                child: Text(
                  "Một mã code 4 số đã được gửi tới điện thoại của bạn",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.titleLargeGray400,
                ),
              ),
              SizedBox(height: 79.v),
              CustomPinCodeTextField(
                context: context,
                onChanged: (value) {},
              ),
              SizedBox(height: 48.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 35.h,
                  right: 27.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 1.v),
                      child: Text(
                        "Không nhận được mã?",
                        style: CustomTextStyles.titleLargeGray400,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 1.h,
                        bottom: 2.v,
                      ),
                      child: Text(
                        "Gửi lại mã",
                        style: theme.textTheme.bodyLarge,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 37.v),
              CustomOutlinedButton(
                width: 230.h,
                text: "XÁC NHẬN",
                buttonTextStyle: theme.textTheme.titleMedium!,
                onPressed: () {
                  onTapConfirm(context);
                },
              ),
              SizedBox(height: 5.v)
            ],
          ),
        ),
      ),
    );
  }

  /// Navigates to the setPasswordScreen when the action is triggered.
  onTapConfirm(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.setPasswordScreen);
  }
}
