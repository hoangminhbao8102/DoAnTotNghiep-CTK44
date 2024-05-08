import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class InfoFarmScreen extends StatelessWidget {
  InfoFarmScreen({Key? key}) : super(key: key);

  TextEditingController farmNameController= TextEditingController();

  TextEditingController creationDateController = TextEditingController();

  TextEditingController ownerController = TextEditingController();

  TextEditingController locationController = TextEditingController();

  TextEditingController livestockTypeController = TextEditingController();

  TextEditingController livestockNameController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppbar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 4.h,
            vertical: 24.v
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgBigLocation,
                height: 120.adaptSize,
                width: 120.adaptSize,
              ),
              SizedBox(height: 83.v),
              _buildRowFarmName(context),
              SizedBox(height: 15.v),
              _buildRowCreatedDate(context),
              SizedBox(height: 9.v),
              _buildRowOwner(context),
              SizedBox(height: 18.v),
              _buildRowLocation(context),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 12.v,
                          bottom: 13.v
                        ),
                        child: Text(
                          "VỊ TRÍ",
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                      _buildArea(context),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 14.h,
                          top: 12.v,
                          bottom: 13.v
                        ),
                        child: Text(
                          "M2",
                          style: theme.textTheme.titleLarge,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 18.v),
              _buildRowLivestockType(context),
              SizedBox(height: 15.v),
              _buildRowLivestockName(context),
              SizedBox(height: 12.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 12.v,
                          bottom: 13.v,
                        ),
                        child: Text(
                          "Số lượng con",
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                      _buildLivestockNumber(context),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 12.h,
                          top: 12.v,
                          bottom: 13.v,
                        ),
                        child: Text(
                          "CON",
                          style: theme.textTheme.titleLarge,
                        ),
                      )
                    ],
                  ),
                ),
              ),
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
      height: 55.v,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftPrimary,
        margin: EdgeInsets.only(
          left: 30.h,
          top: 16.v,
          bottom: 15.v,
        ),
        onTap: () {
          onTapArrowleft(context);
        },
      ),
      centerTitle: true,
      title: AppbarTitle(text: "THÔNG TIN TRANG TRẠI"),
    );
  }

  /// Section Widget
  Widget _buildFarmName(BuildContext context) {
    return CustomTextFormField(
      width: 260.h,
      controller: farmNameController,
      hintText: "TÊN TRANG TRẠI",
    );
  }

  /// Section Widget
  Widget _buildRowFarmName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 1.h,
        right: 4.h
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 24.v,
            width: 152.v,
            margin: EdgeInsets.only(
              top: 10.v,
              bottom: 15.v,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 9.h),
                    child: Text(
                      "GIỚI THIỆU",
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "TÊN TRANG TRẠI",
                    style: theme.textTheme.titleLarge,
                  ),
                )
              ],
            ),
          ),
          _buildFarmName(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCreationDate(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 13.h),
        child: CustomTextFormField(
          controller: creationDateController,
          hintText: "Ngày tạo",
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowCreatedDate(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 12.v,
            bottom: 13.v,
          ),
          child: Text(
            "NGÀY TẠO",
            style: theme.textTheme.titleLarge,
          )
        ),
        _buildCreationDate(context),
      ],
    );
  }

  /// Section Widget
  Widget _buildOwner(BuildContext context) {
    return CustomTextFormField(
      width: 290.h,
      controller: ownerController,
      hintText: "CHỦ SỞ HỮU",
    );
  }

  /// Section Widget
  Widget _buildRowOwner(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 10.v,
              bottom: 15.v,
            ),
            child: Text(
              "CHỦ SỞ HỮU",
              style: theme.textTheme.titleLarge,
            ),
          ),
          _buildOwner(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLocation(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 14.h),
        child: CustomTextFormField(
          controller: locationController,
          hintText: "Ngày tạo",
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowLocation(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 12.v,
            bottom: 13.v,
          ),
          child: Text(
            "VỊ TRÍ",
            style: theme.textTheme.titleLarge,
          )
        ),
        _buildLocation(context),
      ],
    );
  }

  /// Section Widget
  Widget _buildArea(BuildContext context) {
    return CustomOutlinedButton(
      height: 50.v,
      width: 72.h,
      text: "DIỆN TÍCH",
      margin: EdgeInsets.only(left: 15.h),
      buttonStyle: CustomButtonStyles.outlineGreen,
      buttonTextStyle: theme.textTheme.bodySmall!,
    );
  }

  /// Section Widget
  Widget _buildLivestockType(BuildContext context) {
    return CustomTextFormField(
      width: 275.h,
      controller: livestockTypeController,
      hintText: "LOẠI VẬT NUÔI",
    );
  }

  /// Section Widget
  Widget _buildRowLivestockType(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 1.h,
        right: 5.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 12.v,
              bottom: 13.v,
            ),
            child: Text(
              "Loại vật nuôi",
              style: theme.textTheme.titleLarge,
            ),
          ),
          _buildLivestockType(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLivestockName(BuildContext context) {
    return CustomTextFormField(
      width: 275.h,
      controller: livestockNameController,
      hintText: "TÊN VẬT NUÔI",
      textInputAction: TextInputAction.done,
    );
  }

  /// Section Widget
  Widget _buildRowLivestockName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 1.h,
        right: 5.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 12.v,
              bottom: 13.v,
            ),
            child: Text(
              "Tên vật nuôi",
              style: theme.textTheme.titleLarge,
            ),
          ),
          _buildLivestockName(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLivestockNumber(BuildContext context) {
    return CustomOutlinedButton(
      height: 50.v,
      width: 50.h,
      text: "CON",
      margin: EdgeInsets.only(left: 9.h),
      buttonStyle: CustomButtonStyles.outlineGreen,
      buttonTextStyle: theme.textTheme.bodySmall!,
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}