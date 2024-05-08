import 'package:flutter/material.dart';
import 'package:smart_farm_app/data/api/api_client.dart';
import 'package:smart_farm_app/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:smart_farm_app/presentation/home_page/home_page.dart';
import 'package:smart_farm_app/presentation/register_screen/register_screen.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable

class LogInScreen extends StatelessWidget {
  final APIClient apiClient;

  LogInScreen({Key? key, required this.apiClient}) : super(key: key);

  TextEditingController userNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

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
                padding: EdgeInsets.symmetric(
                  horizontal: 31.h,
                  vertical: 53.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImage,
                      height: 198.v,
                      width: 214.h,
                      radius: BorderRadius.circular(
                        99.h,
                      ),
                      alignment: Alignment.center,
                    ),
                    SizedBox(height: 19.v),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "ĐĂNG NHẬP",
                        style: theme.textTheme.displayMedium,
                      ),
                    ),
                    SizedBox(height: 44.v),
                    _buildRowlock(context),
                    SizedBox(height: 20.v),
                    _buildRowlocation(context),
                    SizedBox(height: 36.v),
                    GestureDetector(
                      onTap: () {
                        onTapTxtForgotPassword(context);
                      },
                      child: Text(
                        "Quên mật khẩu ?",
                        style:
                            CustomTextStyles.titleMediumRobotoGreen500.copyWith(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    SizedBox(height: 35.v),
                    _buildLogin(context),
                    SizedBox(height: 20.v),
                    _buildRegister(context),
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
  Widget _buildRowlock(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 9.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLock,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 13.v),
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
  Widget _buildRowlocation(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 9.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLocation,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 13.v),
          ),
          _buildPassword(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLogin(BuildContext context) {
    return CustomOutlinedButton(
      width: 230.h,
      text: "ĐĂNG NHẬP",
      margin: EdgeInsets.only(left: 33.h),
      onPressed: () async {
        // Lấy thông tin từ các trường nhập liệu
        final username = userNameController.text;
        final password = passwordController.text;

        try {
          await apiClient.Login(username, password);
          onTapLogin(context);
        } catch (error) {
          // Xử lý lỗi ở đây, ví dụ: hiển thị thông báo lỗi
          print("Đăng nhập thất bại: $error");
        }
      },
    );
  }

  /// Section Widget
  Widget _buildRegister(BuildContext context) {
    return CustomOutlinedButton(
      width: 230.h,
      text: "ĐĂNG KÝ",
      margin: EdgeInsets.only(right: 52.h),
      buttonStyle: CustomButtonStyles.outlinePrimaryTL30,
      buttonTextStyle: CustomTextStyles.titleMediumPrimary,
      onPressed: () {
        onTapRegister(context);
      },
    );
  }

  onTapTxtForgotPassword(BuildContext context) {
    Navigator.push(
      context, MaterialPageRoute(builder: (context) => ForgotPasswordScreen())
    );
  }

  onTapLogin(BuildContext context) {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
  }

  onTapRegister(BuildContext context) {
    Navigator.push(
      context, 
      MaterialPageRoute(builder: (context) => RegisterScreen())
    );
  }
}
