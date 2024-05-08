import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_small_inter.dart';
import '../../widgets/app_bar/custom_app_bar.dart';

class InformationScreen extends StatelessWidget {
  const InformationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppbar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 43.v),
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
              SizedBox(height: 68.v),
              Padding(
                padding: EdgeInsets.only(right: 4.h),
                child: _BuildChooseInfo(
                  context,
                  locationImage: ImageConstant.imgLivestock,
                  titleText: "VẬT NUÔI",
                  onTapChooseInfo: () {
                    onTapChooseInfoLivestock(context);
                  }
                ),
              ),
              SizedBox(height: 287.v),
              Padding(
                padding: EdgeInsets.only(right: 4.h),
                child: _BuildChooseInfo(
                  context,
                  locationImage: ImageConstant.imgBigLocation,
                  titleText: "TRANG TRẠI",
                  onTapChooseInfo: () {
                    onTapChooseInfoFarm(context);
                  }
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

  /// Common Widget
  Widget _BuildChooseInfo(BuildContext context, { required String locationImage, required String titleText, Function? onTapChooseInfo }) {
    return GestureDetector(
      onTap: () {
        onTapChooseInfo?.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 47.h),
        child: Column(
          children: [
            Container(
              height: 200.adaptSize,
              width: 200.adaptSize,
              padding: EdgeInsets.all(35.h),
              decoration: AppDecoration.outlineGreen.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder15
              ),
              child: CustomImageView(
                imagePath: locationImage,
                height: 120.adaptSize,
                width: 120.adaptSize,
                alignment: Alignment.center,
              ),
            ),
            SizedBox(height: 30.v),
            Text(
              titleText,
              style: theme.textTheme.titleLarge!.copyWith(
                color: theme.colorScheme.secondaryContainer.withOpacity(1)
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates back to the livestockScreen when the action is triggered
  onTapChooseInfoLivestock(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.livestockScreen);
  }

  /// Navigates back to the infoAllFarmScreen when the action is triggered
  onTapChooseInfoFarm(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.infoAllFarmScreen);
  }
}