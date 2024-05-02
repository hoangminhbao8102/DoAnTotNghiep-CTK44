import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable

class ChangePasswordScreen extends StatelessWidget {
  ChangePasswordScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController oldPasswordController = TextEditingController();

  TextEditingController newPasswordController = TextEditingController();

  TextEditingController newPasswordAuthenticationController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                  left: 15.h,
                  top: 63.v,
                  right: 15.h,
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgArrowLeftOnprimary,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.only(bottom: 2.v),
                            onTap: () {
                              onTapImgArrowleft(context);
                            },
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 118.h,
                              top: 2.v,
                            ),
                            child: Text(
                              "Đổi mật khẩu",
                              style: theme.textTheme.titleLarge,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 34.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage,
                      height: 94.v,
                      width: 93.v,
                      radius: BorderRadius.circular(46.h),
                    ),
                    SizedBox(height: 34.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 26.h),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Mật khẩu cũ ",
                                style: CustomTextStyles.titleMediumRobotoSecondaryContainerMedium,
                              ),
                              TextSpan(
                                text: "*",
                                style: CustomTextStyles.titleMediumRobotoRedA700,
                              )
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    SizedBox(height: 19.v),
                    _buildOldProperty(context),
                    SizedBox(height: 20.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 26.h),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Mật khẩu mới ",
                                style: CustomTextStyles.titleMediumRobotoSecondaryContainerMedium,
                              ),
                              TextSpan(
                                text: "*",
                                style: CustomTextStyles.titleMediumRobotoRedA700,
                              )
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    SizedBox(height: 20.v),
                    _buildNewProperty(context),
                    SizedBox(height: 19.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 26.h),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Nhập lại mật khẩu mới ",
                                style: CustomTextStyles.titleMediumRobotoSecondaryContainerMedium,
                              ),
                              TextSpan(
                                text: "*",
                                style: CustomTextStyles.titleMediumRobotoRedA700,
                              )
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    SizedBox(height: 21.v),
                    _buildNewPasswordAuthenticationProperty(context),
                    SizedBox(height: 52.v),
                    _buildChangePassword(context),
                    SizedBox(height: 5.v),
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
  Widget _buildOldPassword(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 10.h),
        child: CustomTextFormField(
          controller: oldPasswordController,
          hintText: "Password",
          textInputType: TextInputType.visiblePassword,
          suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 13.v, 18.h, 13.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgEye,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 50.v,
          ),
          obscureText: true,
          contentPadding: EdgeInsets.only(
            left: 8.h,
            top: 17.v,
            bottom: 17.v,
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOldProperty(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLocation,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 13.v),
          ),
          _buildOldPassword(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNewPassword(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 10.h),
        child: CustomTextFormField(
          controller: newPasswordController,
          hintText: "Password",
          textInputType: TextInputType.visiblePassword,
          suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 13.v, 18.h, 13.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgEye,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 50.v,
          ),
          obscureText: true,
          contentPadding: EdgeInsets.only(
            left: 8.h,
            top: 17.v,
            bottom: 17.v,
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNewProperty(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLocation,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 13.v),
          ),
          _buildNewPassword(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNewPasswordAuthentication(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 10.h),
        child: CustomTextFormField(
          controller: newPasswordAuthenticationController,
          hintText: "Xác thực Password",
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 15.v, 11.h, 11.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgEye,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 50.v,
          ),
          obscureText: true,
          contentPadding: EdgeInsets.only(
            left: 8.h,
            top: 17.v,
            bottom: 17.v,
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNewPasswordAuthenticationProperty(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 9.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLocation,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 11.v,
              bottom: 15.v,
            ),
          ),
          _buildNewPasswordAuthentication(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildChangePassword(BuildContext context) {
    return CustomOutlinedButton(
      height: 63.v,
      width: 231.h,
      text: "ĐỔI MẬT KHẨU",
      buttonTextStyle: theme.textTheme.titleMedium!,
    );
  }

  /// Navigates back to the previous screen.
  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
