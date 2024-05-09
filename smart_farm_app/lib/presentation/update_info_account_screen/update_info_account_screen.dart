import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable

class UpdateInfoAccountScreen extends StatelessWidget {
  UpdateInfoAccountScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController fullNameController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppbar(context),
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
                  horizontal: 40.h,
                  vertical: 26.v,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 110.v,
                      width: 106.h,
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgImage,
                            height: 98.v,
                            width: 106.h,
                            radius: BorderRadius.circular(49.h),
                            alignment: Alignment.topCenter,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgUser,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            alignment: Alignment.bottomRight,
                            margin: EdgeInsets.only(right: 8.h),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 46.v),
                    _buildRowFullName(context),
                    SizedBox(height: 20.v),
                    _buildRowAddress(context),
                    SizedBox(height: 20.v),
                    _buildRowPhoneNumber(context),
                    SizedBox(height: 20.v),
                    _buildRowEmail(context),
                    SizedBox(height: 64.v),
                    _buildSaveChanged(context),
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
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 57.h,
      leading: Container(
        height: 24.adaptSize,
        width: 24.adaptSize,
        margin: EdgeInsets.only(
          left: 30.h,
          top: 15.v,
          bottom: 16.v,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgArrowLeftOnprimary,
              height: 24.adaptSize,
              width: 24.adaptSize,
              alignment: Alignment.center,
              onTap: () {
                onTapImgArrowLeft(context);
              },
            ),
            CustomImageView(
              imagePath: ImageConstant.imgArrowLeftOnprimary,
              height: 24.adaptSize,
              width: 24.adaptSize,
              alignment: Alignment.center,
            )
          ],
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(text: "CẬP NHẬT THÔNG TIN CÁ NHÂN"),
    );
  }

  /// Section Widget
  Widget _buildFullName(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 10.h),
        child: CustomTextFormField(
          controller: fullNameController,
          hintText: "Họ và tên người dùng",
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowFullName(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgLock,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(
            top: 14.v,
            bottom: 12.v,
          ),
        ),
        _buildFullName(context)
      ],
    );
  }

  /// Section Widget
  Widget _buildAddress(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 10.h),
        child: CustomTextFormField(
          controller: addressController,
          hintText: "Địa chỉ",
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowAddress(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgLinkedin,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(
            top: 14.v,
            bottom: 12.v,
          ),
        ),
        _buildAddress(context)
      ],
    );
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 10.h),
        child: CustomTextFormField(
          controller: phoneNumberController,
          hintText: "Số điện thoại",
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowPhoneNumber(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
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
        _buildPhoneNumber(context)
      ],
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 10.h),
        child: CustomTextFormField(
          controller: emailController,
          hintText: "Email",
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.emailAddress,
          obscureText: true,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowEmail(BuildContext context) {
    return Row(
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
    );
  }

  

  /// Section Widget
  Widget _buildSaveChanged(BuildContext context) {
    return CustomElevatedButton(
      height: 60.v,
      width: 230.h,
      text: "LƯU THAY ĐỔI",
      buttonStyle: CustomButtonStyles.fillPrimary,
      buttonTextStyle: CustomTextStyles.titleLargeGray50,
      onPressed: () {
        onTapSaveChanged(context);
      },
    );
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates back to the settingScreen when the action is triggered
  onTapSaveChanged(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("XÁC NHẬN"),
          content: Text("Bạn có muốn lưu thay đổi không?"),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, AppRoutes.settingScreen);
              },
              child: Text("Có"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Không"),
            ),
          ],
        );
      },
    );
  }
}
