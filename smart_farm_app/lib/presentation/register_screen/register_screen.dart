import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController fullnameController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  TextEditingController phonenumberController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController userNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController passwordAuthenticationController = TextEditingController();

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
                padding: EdgeInsets.symmetric(
                  horizontal: 31.h,
                  vertical: 26.v,
                ),
                child: Column(
                  children: [
                    SizedBox(height: 7.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage,
                      height: 198.v,
                      width: 214.h,
                      radius: BorderRadius.circular(
                        99.h,
                      ),
                    ),
                    SizedBox(height: 21.v),
                    Text(
                      "ĐĂNG KÝ",
                      style: theme.textTheme.displayMedium,
                    ),
                    SizedBox(height: 29.v),
                    _buildRowlockUsername(context),
                    SizedBox(height: 20.v),
                    _buildRowlinkedin(context),
                    SizedBox(height: 20.v),
                    _buildRowcall(context),
                    SizedBox(height: 20.v),
                    _buildRowcheckmark(context),
                    SizedBox(height: 20.v),
                    _buildRowlock(context),
                    SizedBox(height: 20.v),
                    _buildRowlocation(context),
                    SizedBox(height: 20.v),
                    _buildRowlocationAuthPassword(context)
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildRegister(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildFullname(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 20.h),
        child: CustomTextFormField(
          controller: fullnameController,
          hintText: "Họ và tên người dùng",
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowlock(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 9.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLock,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 11.v,
              bottom: 15.v,
            ),
          ),
          _buildFullname(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAddress(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 20.h),
        child: CustomTextFormField(
          controller: addressController,
          hintText: "Địa chỉ",
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowlinkedin(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 9.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLinkedin,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 11.v,
              bottom: 15.v,
            ),
          ),
          _buildAddress(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPhonenumber(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 20.h),
        child: CustomTextFormField(
          controller: phonenumberController,
          hintText: "Số điện thoại",
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowcall(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 9.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgCall,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 11.v,
              bottom: 15.v,
            ),
          ),
          _buildPhonenumber(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 20.h),
        child: CustomTextFormField(
          controller: emailController,
          hintText: "Email",
          textInputType: TextInputType.emailAddress,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowcheckmark(BuildContext context) {
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
          _buildEmail(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserName(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 20.h),
        child: CustomTextFormField(
          controller: userNameController,
          hintText: "Username",
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowlockUsername(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 9.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLock,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 11.v,
              bottom: 15.v,
            ),
          ),
          _buildUserName(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 20.h),
        child: CustomTextFormField(
          controller: passwordController,
          hintText: "Password",
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
  Widget _buildRowlocation(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 9.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
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
          _buildPassword(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordAuthentication(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 20.h),
        child: CustomTextFormField(
          controller: passwordAuthenticationController,
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
  Widget _buildRowlocationAuthPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 9.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
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
          _buildPasswordAuthentication(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRegister(BuildContext context) {
    return CustomOutlinedButton(
      width: 230.h,
      text: "ĐĂNG KÝ",
      margin: EdgeInsets.only(
        left: 100.h,
        right: 100.h,
        bottom: 47.v,
      ),
      buttonStyle: CustomButtonStyles.outlineGreen,
      buttonTextStyle: theme.textTheme.titleMedium!,
      onPressed: () {
        onTapRegister(context);
      },
    );
  }

  /// Navigates to the logInScreen when the action is triggered.
  onTapRegister(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.logInScreen);
  }
}
