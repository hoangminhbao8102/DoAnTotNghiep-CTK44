import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable

class InfoAccountScreen extends StatelessWidget {
  InfoAccountScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController userNameController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  TextEditingController phonenumberController = TextEditingController();

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
                  horizontal: 39.h,
                  vertical: 14.v,
                ),
                child: Column(
                  children: [
                    SizedBox(height: 7.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage,
                      height: 94.v,
                      width: 93.h,
                      radius: BorderRadius.circular(
                        46.h,
                      ),
                    ),
                    SizedBox(height: 16.v),
                    Text(
                      "Minh Bảo",
                      style: theme.textTheme.titleLarge,
                    ),
                    SizedBox(height: 42.v),
                    _buildRowlock(context),
                    SizedBox(height: 50.v),
                    _buildRowlinkedin(context),
                    SizedBox(height: 50.v),
                    _buildRowcall(context),
                    SizedBox(height: 50.v),
                    _buildRowcheckmark(context),
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
      leadingWidth: 64.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftPrimary,
        margin: EdgeInsets.only(
          left: 39.h,
          top: 15.v,
          bottom: 15.v,
        ),
        onTap: () {
          onTapArrowleft(context);
        },
      ),
      title: AppbarTitle(
        text: "THÔNG TIN CÁ NHÂN",
        margin: EdgeInsets.only(left: 57.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowlock(BuildContext context) {
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
        _buildUserName(context)
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
  Widget _buildRowlinkedin(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
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
    );
  }

  /// Section Widget
  Widget _buildPhonenumber(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 10.h),
        child: CustomTextFormField(
          controller: phonenumberController,
          hintText: "Số điện thoại",
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowcall(BuildContext context) {
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
        _buildPhonenumber(context)
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
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowcheckmark(BuildContext context) {
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

  /// Navigates back to the previous screen.
  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
