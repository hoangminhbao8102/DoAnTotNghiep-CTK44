import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_drop_down.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class UpdateInfoFarmScreen extends StatelessWidget {
  UpdateInfoFarmScreen({Key? key}) : super(key: key);

  TextEditingController farmNameController = TextEditingController();

  TextEditingController locationController = TextEditingController();

  TextEditingController areaController = TextEditingController();

  TextEditingController quantityController = TextEditingController();
  
  List<String> dropdownItemListLivestockType = ["Item 1", "Item 2", "Item 3"];

  List<String> dropdownItemListLivestock = ["Item 1", "Item 2", "Item 3"];

  TextEditingController cowController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppbar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 26.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgBigLocation,
                height: 120.adaptSize,
                width: 120.adaptSize,
                alignment: Alignment.center,
              ),
              SizedBox(height: 34.v),
              _buildRowField(context),
              SizedBox(height: 20.v),
              _buildRowLocation(context),
              SizedBox(height: 20.v),
              _buildRowWide(context),
              SizedBox(height: 20.v),
              _buildRowCounter(context),
              SizedBox(height: 20.v),
              _buildRowLivestockType(context),
              SizedBox(height: 4.v),
              Container(
                margin: EdgeInsets.only(left: 63.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 7.h,
                  vertical: 9.v,
                ),
                decoration: AppDecoration.white.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Gia súc",
                          style: CustomTextStyles.bodySmallGray800,
                        ),
                        SizedBox(height: 14.v),
                        Text(
                          "Gia cầm",
                          style: CustomTextStyles.bodySmallGray800,
                        ),
                        SizedBox(height: 16.v),
                        Text(
                          "Thú cưng",
                          style: CustomTextStyles.bodySmallGray800,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 75.v,
                      child: VerticalDivider(
                        width: 4.h,
                        thickness: 4.v,
                        endIndent: 35.h,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20.v),
              _buildRowLivestock(context),
              SizedBox(height: 7.v)
            ],
          ),
        ),
        bottomNavigationBar: _buildUpdate(context),
      )
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 54.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftOnprimary,
        margin: EdgeInsets.only(
          left: 30.h,
          top: 14.v,
          bottom: 17.v,
        ),
        onTap: () {
          onTapArrowLeft(context);
        },
      ),
      centerTitle: true,
      title: AppbarTitle(text: "CẬP NHẬT THÔNG TIN TRANG TRẠI"),
    );
  }

  /// Section Widget
  Widget _buildFarmName(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 8.h),
        child: CustomTextFormField(
          controller: farmNameController,
          hintText: "Tên trang trại",
          borderDecoration: TextFormFieldStyleHelper.outlineOnPrimaryContainer,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 31.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgField,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 13.v),
          ),
          _buildFarmName(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLocation(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 8.h),
        child: CustomTextFormField(
          controller: locationController,
          hintText: "Vị trí",
          borderDecoration: TextFormFieldStyleHelper.outlineOnPrimaryContainer,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowLocation(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 31.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLocation,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 13.v),
          ),
          _buildLocation(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildArea(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 8.h),
        child: CustomTextFormField(
          controller: areaController,
          hintText: "Diện tích",
          borderDecoration: TextFormFieldStyleHelper.outlineOnPrimaryContainer,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowWide(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 31.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgWide,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 13.v),
          ),
          _buildArea(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildQuantity(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 8.h),
        child: CustomTextFormField(
          controller: quantityController,
          hintText: "Số lượng con",
          borderDecoration: TextFormFieldStyleHelper.outlineOnPrimaryContainer,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowCounter(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 31.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgCounter,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 13.v),
          ),
          _buildQuantity(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowLivestockType(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 31.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLivestock,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 9.v,
              bottom: 13.v
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: CustomDropDown(
                icon: Container(
                  margin: EdgeInsets.symmetric(horizontal: 8.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgArrowdown,
                    height: 10.adaptSize,
                    width: 10.adaptSize,
                  ),
                ),
                hintText: "Chọn loại vật nuôi",
                items: dropdownItemListLivestockType,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCowone(BuildContext context) {
    return CustomTextFormField(
      controller: cowController,
      hintText: "Bò",
      textInputAction: TextInputAction.done,
      maxLines: 6,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 11.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildRowLivestock(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 31.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLivestock,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 11.v,
              bottom: 113.v
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Column(
                children: [
                  CustomDropDown(
                    icon: Container(
                      margin: EdgeInsets.symmetric(horizontal: 8.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgArrowdown,
                        height: 10.adaptSize,
                        width: 10.adaptSize,
                      ),
                    ),
                    hintText: "Chọn vật nuôi",
                    items: dropdownItemListLivestock,
                  ),
                  SizedBox(height: 4.v),
                  _buildCowone(context)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUpdate(BuildContext context) {
    return CustomElevatedButton(
      height: 63.v,
      width: 231.h,
      text: "CẬP NHẬT",
      margin: EdgeInsets.only(
        left: 99.h,
        right: 100.h,
        bottom: 17.v,
      ),
      buttonTextStyle: CustomTextStyles.titleLargeWhiteA700,
    );
  }

  // Navigates back to the previous screen
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}