import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_drop_down.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class CreateFarmScreen extends StatelessWidget {
  CreateFarmScreen({Key? key}) : super(key: key);

  TextEditingController farmNameController = TextEditingController();

  TextEditingController locationController = TextEditingController();

  TextEditingController areaController = TextEditingController();

  TextEditingController livestockNumberController = TextEditingController();
  
  List<String> dropdownItemListLivestockType = ["Item 1", "Item 2", "Item 3"];

  List<String> dropdownItemListLivestock = ["Item 1", "Item 2", "Item 3"];

  TextEditingController livestockController = TextEditingController();

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
                          onTapImgArrowleft(context);
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
              _buildRowFarmName(context),
              SizedBox(height: 20.v),
              _buildRowLocation(context),
              SizedBox(height: 20.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgWide,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.symmetric(vertical: 13.v),
                      ),
                      _buildArea(context),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 2.h,
                          top: 11.v,
                          bottom: 13.v,
                        ),
                        child: Text(
                          "M2",
                          style: CustomTextStyles.titleLarge,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgCounter,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.symmetric(vertical: 13.v),
                      ),
                      _buildLivestockNumber(context),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 4.h,
                          top: 12.v,
                          bottom: 13.v,
                        ),
                        child: Text(
                          "CON",
                          style: CustomTextStyles.titleLarge,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.v),
              _buildRowLivestockType(context),
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
  Widget _buildFarmName(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 20.h),
        child: CustomTextFormField(
          controller: farmNameController,
          hintText: "Tên trang trại",
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowFarmName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
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
        padding: EdgeInsets.only(left: 20.h),
        child: CustomTextFormField(
          controller: locationController,
          hintText: "Vị trí",
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowLocation(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8.h),
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
    return Padding(
      padding: EdgeInsets.only(left: 20.h),
      child: CustomTextFormField(
        width: 78.h,
        controller: areaController,
        hintText: "Diện tích",
      ),
    );
  }

  /// Section Widget
  Widget _buildLivestockNumber(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 19.h),
      child: CustomTextFormField(
        width: 55.h,
        controller: livestockNumberController,
        hintText: "Con",
      ),
    );
  }

  /// Section Widget
  Widget _buildRowLivestockType(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLivestock,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 9.v,
              bottom: 115.v
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 19.h),
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
                    hintText: "Chọn loại vật nuôi",
                    items: dropdownItemListLivestockType,
                  ),
                  SizedBox(height: 4.v),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 7.h,
                      vertical: 9.v,
                    ),
                    decoration: AppDecoration.outlineGreen.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder20
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
                              "Gia súc",
                              style: CustomTextStyles.bodySmallGray800,
                            ),
                            SizedBox(height: 14.v),
                            Text(
                              "Gia súc",
                              style: CustomTextStyles.bodySmallGray800,
                            )
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
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLivestock(BuildContext context) {
    return CustomTextFormField(
      controller: livestockController,
      hintText: "Bò",
      textInputAction: TextInputAction.done,
      maxLines: 6,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 11.v,
      ),
      borderDecoration: TextFormFieldStyleHelper.outlineGreen,
    );
  }

  /// Section Widget
  Widget _buildRowLivestock(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 31.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
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
              padding: EdgeInsets.only(left: 19.h),
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
                  _buildLivestock(context)
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
        left: 100.h,
        right: 100.h,
        bottom: 17.v,
      ),
      buttonStyle: CustomButtonStyles.outlinePrimaryTL30,
      buttonTextStyle: CustomTextStyles.titleLargeWhiteA700,
      onPressed: () {
        onTapConfirm(context);
      },
    );
  }

  /// Navigates back to the previous screen
  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates back to the homePage when the action is triggered
  onTapConfirm(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homePage);
  }
}