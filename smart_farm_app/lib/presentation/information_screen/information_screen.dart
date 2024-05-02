import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_small_inter.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';

class InformationScreen extends StatelessWidget {
  const InformationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppbar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 5.v),
          child: Column(
            children: [
              SizedBox(
                width: 299.h,
                child: Text(
                  "CHỌN VẬT NUÔI HAY TRANG TRẠI \nĐỂ XEM THÔNG TIN",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.titleLarge,
                ),
              ),
              SizedBox(height: 28.v),
              Container(
                height: 200.adaptSize,
                width: 200.adaptSize,
                padding: EdgeInsets.all(35.h),
                decoration: AppDecoration.outlinedGreen.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder15
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgLivestockInfo,
                  height: 120.adaptSize,
                  width: 120.adaptSize,
                  alignment: Alignment.center,
                ),
              ),
              SizedBox(height: 27.v),
              Text(
                "VẬT NUÔI",
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 28.v),
              Container(
                height: 200.adaptSize,
                width: 200.adaptSize,
                padding: EdgeInsets.all(35.h),
                decoration: AppDecoration.outlinedGreen.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder15
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgBigLocation,
                  height: 120.adaptSize,
                  width: 120.adaptSize,
                  alignment: Alignment.center,
                ),
              ),
              SizedBox(height: 29.v),
              Text(
                "TRANG TRẠI",
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 29.v),
              CustomElevatedButton(
                height: 65.v,
                width: 230.h,
                text: "XEM THÔNG TIN",
                buttonStyle: CustomButtonStyles.outlinePrimaryTL30,
                buttonTextStyle: CustomTextStyles.titleLargeWhiteA700,
                onPressed: () {
                  onTapWatchInformation(context);
                },
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
      leadingWidth: 54.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftPrimary,
        margin: EdgeInsets.only(
          left: 30.h,
          top: 16.v,
          bottom: 16.v,
        ),
        onTap: () {
          onTapArrowleft(context);
        },
      ),
      centerTitle: true,
      title: AppbarSubtitleSmallInter(text: "THÔNG TIN CHI TIẾT"),
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates back to the infoAllFarmScreen when the action is triggered
  onTapWatchInformation(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.infoAllFarmScreen);
  }
}