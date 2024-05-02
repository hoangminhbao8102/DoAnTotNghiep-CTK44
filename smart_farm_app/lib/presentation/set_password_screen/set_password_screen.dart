import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable

class SetPasswordScreen extends StatelessWidget {
  SetPasswordScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController newPasswordController = TextEditingController();

  TextEditingController confirmNewPasswordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray100,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(
                  left: 30.h,
                  top: 109.v,
                  right: 30.h,
                ),
                child: Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgKisspngCompute,
                      height: 205.v,
                      width: 200.h,
                      radius: BorderRadius.circular(
                        100.h,
                      ),
                    ),
                    SizedBox(height: 43.v),
                    Text(
                      "Đặt lại mật khẩu",
                      style: theme.textTheme.displayMedium,
                    ),
                    SizedBox(height: 37.v),
                    _buildRowlocationNewPassword(context),
                    SizedBox(height: 40.v),
                    _buildRowlocationConfirmNewPassword(context),
                    SizedBox(height: 42.v),
                    CustomOutlinedButton(
                      width: 230.h,
                      text: "ĐẶT LẠI MẬT KHẨU",
                      buttonTextStyle: theme.textTheme.titleMedium!,
                      onPressed: () {
                        onTapSetPassword(context);
                      },
                    ),
                    SizedBox(height: 5.v)
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowlocationNewPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 11.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLocation,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 15.v,
              bottom: 11.v,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: CustomTextFormField(
                controller: newPasswordController,
                hintText: "Mật khẩu mới",
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowlocationConfirmNewPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 11.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLocation,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 13.v),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: CustomTextFormField(
                controller: confirmNewPasswordController,
                hintText: "Nhập lại mật khẩu mới",
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.visiblePassword,
                obscureText: true,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Navigates to the logInScreen when the action is triggered.
  onTapSetPassword(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.logInScreen);
  }
}
