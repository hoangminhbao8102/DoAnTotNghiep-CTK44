import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class InfoLivestockScreen extends StatelessWidget {
  InfoLivestockScreen({Key? key}) : super(key: key);

  TextEditingController livestockNameController= TextEditingController();

  TextEditingController livestockTypeController = TextEditingController();

  TextEditingController descriptionController = TextEditingController();

  TextEditingController dateOfBirthController = TextEditingController();

  TextEditingController breedController = TextEditingController();

  TextEditingController livestockCareController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppbar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 15.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildColumnLivestockImage(context),
              SizedBox(height: 15.v),
              _buildRowLivestockName(context),
              SizedBox(height: 15.v),
              _buildRowLivestockType(context),
              SizedBox(height: 16.v),
              _buildRowDateOfBirth(context),
              SizedBox(height: 10.v),
              Padding(
                padding: EdgeInsets.only(left: 11.h),
                child: Text(
                  "MÔ TẢ", 
                  style: theme.textTheme.titleLarge
                ),
              ),
              SizedBox(height: 12.v),
              _buildDescription(context),
              SizedBox(height: 12.v),
              Padding(
                padding: EdgeInsets.only(left: 5.h),
                child: Text(
                  "NUÔI TRỒNG", 
                  style: theme.textTheme.titleLarge
                ),
              ),
              SizedBox(height: 18.v),
              _buildBreed(context),
              SizedBox(height: 13.v),
              Padding(
                padding: EdgeInsets.only(left: 15.h),
                child: Text(
                  "CHĂM SÓC", 
                  style: theme.textTheme.titleLarge
                ),
              ),
              SizedBox(height: 17.v),
              _buildCareInstruction(context),
              SizedBox(height: 5.v)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 55.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftPrimary,
        margin: EdgeInsets.only(
          left: 30.h,
          top: 1.v,
        ),
        onTap: () {
          onTapArrowLeft(context);
        },
      ),
      centerTitle: true,
      title: AppbarTitle(text: "THÔNG TIN VẬT NUÔI"),
    );
  }

  /// Section Widget
  Widget _buildColumnLivestockImage(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 5.h,
        vertical: 95.v,
      ),
      decoration: AppDecoration.outlineGreen,
      child: Text(
        "imageURL",
        style: theme.textTheme.bodySmall,
      ),
    );
  }

  /// Section Widget
  Widget _buildLivestockName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 11.h),
      child: CustomTextFormField(
        width: 275.h,
        controller: livestockNameController,
        hintText: "Tên vật nuôi",
      ),
    );
  }

  /// Section Widget
  Widget _buildRowLivestockName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 11.h,
        right: 7.h,
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 12.v,
              bottom: 13.v,
            ),
            child: Text(
              "TÊN VẬT NUÔI",
              style: theme.textTheme.titleLarge,
            )
          ),
          _buildLivestockName(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLivestockType(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 6.h),
      child: CustomTextFormField(
        width: 275.h,
        controller: livestockTypeController,
        hintText: "Loại vật nuôi",
      ),
    );
  }

  /// Section Widget
  Widget _buildRowLivestockType(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 11.h,
        right: 7.h,
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 12.v,
              bottom: 13.v,
            ),
            child: Text(
              "LOẠI VẬT NUÔI",
              style: theme.textTheme.titleLarge,
            )
          ),
          _buildLivestockType(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDateOfBirth(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 6.h),
      child: CustomTextFormField(
        width: 275.h,
        controller: livestockNameController,
        hintText: "Ngày sinh",
      ),
    );
  }

  /// Section Widget
  Widget _buildRowDateOfBirth(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 11.h,
        right: 7.h,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 11.v,
              bottom: 14.v,
            ),
            child: Text(
              "NGÀY SINH",
              style: theme.textTheme.titleLarge,
            )
          ),
          _buildDateOfBirth(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDescription(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 14.h,
      ),
      child: CustomTextFormField(
        controller: descriptionController,
        hintText: "Mô tả",
        alignment: Alignment.center,
        maxLines: 4,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 8.h,
          vertical: 30.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBreed(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 14.h,
      ),
      child: CustomTextFormField(
        controller: breedController,
        hintText: "Nuôi giống",
        alignment: Alignment.center,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 8.h,
          vertical: 30.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCareInstruction(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 14.h,
      ),
      child: CustomTextFormField(
        controller: livestockCareController,
        hintText: "Chăm sóc",
        textInputAction: TextInputAction.done,
        alignment: Alignment.center,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 8.h,
          vertical: 30.v,
        ),
      ),
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}