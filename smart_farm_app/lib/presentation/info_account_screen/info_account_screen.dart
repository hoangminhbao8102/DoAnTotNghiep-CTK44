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

  TextEditingController addressoneController = TextEditingController();

  TextEditingController phonenumberoneController = TextEditingController();

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
                    _buildRowlockone(context),
                    SizedBox(height: 50.v),
                    _buildRowlinkedinone(context),
                    SizedBox(height: 50.v),
                    _buildRowcallone(context),
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
          onTapArrowleftone(context);
        },
      ),
      title: AppbarTitle(
        text: "THÔNG TIN CÁ NHÂN",
        margin: EdgeInsets.only(left: 57.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowlockone(BuildContext context) {
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
  Widget _buildAddressone(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 10.h),
        child: CustomTextFormField(
          controller: addressoneController,
          hintText: "Địa chỉ",
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowlinkedinone(BuildContext context) {
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
        _buildAddressone(context)
      ],
    );
  }

  /// Section Widget
  Widget _buildPhonenumberone(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 10.h),
        child: CustomTextFormField(
          controller: phonenumberoneController,
          hintText: "Số điện thoại",
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowcallone(BuildContext context) {
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
        _buildPhonenumberone(context)
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
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
