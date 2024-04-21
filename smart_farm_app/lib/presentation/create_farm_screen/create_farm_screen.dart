import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_drop_down.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class CreateFarmScreen extends StatelessWidget {
  CreateFarmScreen({Key? key}) : super(key: key);

  TextEditingController farmnameoneController = TextEditingController();

  TextEditingController locationthreeController = TextEditingController();

  TextEditingController areaoneController = TextEditingController();

  TextEditingController quantityoneController = TextEditingController();
  
  List<String> dropdownItemListLivestockType = ["Item 1", "Item 2", "Item 3"];

  List<String> dropdownItemListLivestock = ["Item 1", "Item 2", "Item 3"];

  TextEditingController cowoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 26.h,
            vertical: 28,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 4.h,
                    right: 103.h,
                  ),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgArrowLeftPrimary,
                        height: 25.adaptSize,
                        width: 25.adaptSize,
                        margin: EdgeInsets.only(bottom: 3.v),
                        onTap: () {
                          onTapImgArrowleftone(context);
                        },
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 79.h,
                          top: 2.v,
                        ),
                        child: Text(
                          "TẠO TRANG TRẠI",
                          style: CustomTextStyles.titleLarge20,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.v),
              CustomImageView(
                imagePath: ImageConstant.imgBigLocation,
                height: 120.adaptSize,
                width: 120.adaptSize,
                alignment: Alignment.center,
              ),
              SizedBox(height: 34.v),
              _buildRowfieldtwoone(context),
              SizedBox(height: 20.v),
              _buildRowlocationone(context),
              SizedBox(height: 20.v),
              _buildRowwideoneone(context),
              SizedBox(height: 20.v),
              _buildRowcounterone(context),
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
        bottomNavigationBar: _buildConfirm(context),
      )
    );
  }

  /// Section Widget
  Widget _buildFarmnameone(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 8.h),
        child: CustomTextFormField(
          controller: farmnameoneController,
          hintText: "Tên trang trại",
          borderDecoration: TextFormFieldStyleHelper.outlineOnPrimaryContainer,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowfieldtwoone(BuildContext context) {
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
          _buildFarmnameone(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLocationthree(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 8.h),
        child: CustomTextFormField(
          controller: locationthreeController,
          hintText: "Vị trí",
          borderDecoration: TextFormFieldStyleHelper.outlineOnPrimaryContainer,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowlocationone(BuildContext context) {
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
          _buildLocationthree(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAreaone(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 8.h),
        child: CustomTextFormField(
          controller: areaoneController,
          hintText: "Diện tích",
          borderDecoration: TextFormFieldStyleHelper.outlineOnPrimaryContainer,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowwideoneone(BuildContext context) {
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
          _buildAreaone(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildQuantityone(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 8.h),
        child: CustomTextFormField(
          controller: quantityoneController,
          hintText: "Số lượng con",
          borderDecoration: TextFormFieldStyleHelper.outlineOnPrimaryContainer,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowcounterone(BuildContext context) {
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
          _buildQuantityone(context)
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
      controller: cowoneController,
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
  Widget _buildConfirm(BuildContext context) {
    return CustomElevatedButton(
      height: 63.v,
      width: 231.h,
      text: "XÁC NHẬN",
      margin: EdgeInsets.only(
        left: 99.h,
        right: 100.h,
        bottom: 17.v,
      ),
      buttonTextStyle: CustomTextStyles.titleLargeWhiteA700,
    );
  }

  // Navigates back to the previous screen
  onTapImgArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}