import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_drop_down.dart';
import '../../widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class LivestockScreen extends StatelessWidget {
  LivestockScreen({Key? key}) : super(key: key);

  List<String> dropdownItemListLivestockType = ["Item 1", "Item 2", "Item 3"];

  List<String> dropdownItemListLivestock = ["Item 1", "Item 2", "Item 3"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppbar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 35.h,
            vertical: 14.v
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgCow,
                height: 120.adaptSize,
                width: 120.adaptSize,
              ),
              SizedBox(height: 20.v),
              Text(
                "CHỌN VẬT NUÔI",
                style: theme.textTheme.displaySmall,
              ),
              SizedBox(height: 51.v),
              Padding(
                padding: EdgeInsets.only(left: 15.h),
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
              SizedBox(height: 4.v),
              _buildDropdowmLivestockType(context),
              SizedBox(height: 54.v),
              Padding(
                padding: EdgeInsets.only(left: 15.h),
                child: CustomDropDown(
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
              ),
              SizedBox(height: 4.v),
              _buildDropdowmLivestock(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildContinue(context),
      ) 
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
          top: 16.v,
          bottom: 14.v,
        ),
        onTap: () {
          onTapArrowleft(context);
        },
      ),
      centerTitle: true,
      title: AppbarTitle(text: "GIA SÚC"),
    );
  }

  /// Section Widget
  Widget _buildDropdowmLivestockType(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15.h),
      padding: EdgeInsets.symmetric(
        horizontal: 7.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.white.copyWith(
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
                "Gia cầm",
                style: CustomTextStyles.bodySmallGray800,
              ),
              SizedBox(height: 16.v),
              Text(
                "Thú cưng",
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
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDropdowmLivestock(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15.h),
      padding: EdgeInsets.symmetric(
        horizontal: 7.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.white.copyWith(
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
                "Bò",
                style: CustomTextStyles.bodySmallGray800,
              ),
              SizedBox(height: 15.v),
              Text(
                "Dê",
                style: CustomTextStyles.bodySmallGray800,
              ),
              SizedBox(height: 15.v),
              Text(
                "Cừu",
                style: CustomTextStyles.bodySmallGray800,
              )
            ],
          ),
          SizedBox(
            height: 74.v,
            child: VerticalDivider(
              width: 4.h,
              thickness: 4.v,
              endIndent: 34.h,
            ),
          ),
        ],
      ),
    );
  }
  
  /// Section Widget
  Widget _buildContinue(BuildContext context) {
    return CustomElevatedButton(
      height: 63.v,
      width: 231.h,
      text: "TIẾP TỤC",
      margin: EdgeInsets.only(
        left: 103.h,
        right: 96.h,
        bottom: 21.v,
      ),
      buttonTextStyle: CustomTextStyles.titleLargeGray50,
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}