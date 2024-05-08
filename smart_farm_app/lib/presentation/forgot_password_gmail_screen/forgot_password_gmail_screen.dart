import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable

class ForgotPasswordEmailScreen extends StatelessWidget {
  ForgotPasswordEmailScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Form(
            key: _formKey,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(
                left: 30.h,
                top: 100.v,
                right: 30.h,
              ),
              child: Column(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgKisspngCompute,
                    height: 205.v,
                    width: 200.h,
                    radius: BorderRadius.circular(100.h),
                  ),
                  SizedBox(height: 40.h),
                  Text(
                    "QUÊN MẬT KHẨU",
                    style: theme.textTheme.displayMedium,
                  ),
                  SizedBox(height: 37.v),
                  _buildRowCheckMark(context),
                  SizedBox(height: 33.v),
                  CustomOutlinedButton(
                    width: 230.h,
                    text: "TIẾP TỤC",
                    onPressed: () {
                      onTapContinue(context);
                    }
                  ),
                  SizedBox(height: 5.v)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowCheckMark(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 9.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgCheckmark,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 16.v,
              bottom: 10.v,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: CustomTextFormField(
                controller: emailController,
                hintText: "Nhập email",
                textInputAction: TextInputAction.done,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Navigates to the otpEmailScreen when the action is triggered.
  onTapContinue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.otpEmailScreen);
  }
}
