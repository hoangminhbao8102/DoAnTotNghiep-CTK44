import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'widgets/productdetails_item_widget.dart';
import 'widgets/userprofile_item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppbar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 5.h,
            vertical: 6.v,
          ),
          child: Column(
            children: [
              _buildColumnLivestockTypes(context),
              SizedBox(height: 13.v),
              Text(
                "CÁC SẢN PHẨM",
                style: CustomTextStyles.titleMediumRobotoSecondaryContainerLarge,
              ),
              SizedBox(height: 10.v),
              Divider(
                color: theme.colorScheme.secondaryContainer.withOpacity(1),
              ),
              _buildProductdetails(context),
              SizedBox(height: 20.v),
              _buildRowview(context),
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
      leadingWidth: 85.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgSetting,
        margin: EdgeInsets.only(
          left: 45.h,
          top: 8.v,
          bottom: 7.v,
        ),
        onTap: () {
          onTapSetting(context);
        },
      ),
      title: AppbarSubtitleOne(
        text: "SMART FARM APP",
        margin: EdgeInsets.only(left: 35.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgCart,
          margin: EdgeInsets.only(
            left: 15.h,
            top: 7.v,
            right: 8.h,
          ),
          onTap: () {
            onTapCartone(context);
          },
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgBell,
          margin: EdgeInsets.only(
            left: 10.h,
            top: 7.v,
            right: 23.h,
          ),
          onTap: () {
            onTapBellone(context);
          },
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildColumnLivestockTypes(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 15.h,
        right: 5.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 46.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlinedPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder30
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "CÁC LOẠI VẬT NUÔI",
            style: CustomTextStyles.titleSmallInter,
          ),
          SizedBox(height: 21.v),
          SizedBox(
            height: 95.v,
            child: ListView.separated(
              padding: EdgeInsets.only(left: 3.h),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return UserprofileItemWidget();
              }, 
              separatorBuilder: (context, index) {
                return SizedBox(width: 40.h);
              },  
              itemCount: 3,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProductdetails(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 240.v,
        child: ListView.separated(
          padding: EdgeInsets.only(left: 27.h),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return ProductdetailsItemWidget();
          },  
          separatorBuilder: (context, index) {
            return SizedBox(width: 57.h);
          },   
          itemCount: 3,
        ),
      ),
    );
  }
  
  /// Section Widget
  Widget _buildRowview(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 27.h,
        right: 16.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 12.h,
              vertical: 10.v,
            ),
            decoration: AppDecoration.outlinedSmallerPrimary.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder15
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 100.v,
                  width: 130.h,
                  margin: EdgeInsets.only(left: 2.h),
                  decoration: BoxDecoration(
                    color: appTheme.blueGray100,
                  ),
                ),
                SizedBox(height: 8.v),
                Container(
                  width: 51.h,
                  margin: EdgeInsets.only(left: 4.h),
                  child: Text(
                    "TÊN SẢN PHẨM",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodySmallInterSecondaryContainer,
                  ),
                ),
                SizedBox(height: 5.v),
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(
                    "Giá bán: ",
                    style: CustomTextStyles.bodySmallInterSecondaryContainer,
                  ),
                ),
                SizedBox(height: 16.v),
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(
                    "Đã mua: ",
                    style: CustomTextStyles.bodySmallInterSecondaryContainer,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 12.h,
              vertical: 10.v,
            ),
            decoration: AppDecoration.outlinedSmallerPrimary.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder15
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 100.v,
                  width: 130.h,
                  margin: EdgeInsets.only(left: 2.h),
                  decoration: BoxDecoration(
                    color: appTheme.blueGray100,
                  ),
                ),
                SizedBox(height: 8.v),
                Container(
                  width: 51.h,
                  margin: EdgeInsets.only(left: 4.h),
                  child: Text(
                    "TÊN SẢN PHẨM",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodySmallInterSecondaryContainer,
                  ),
                ),
                SizedBox(height: 5.v),
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(
                    "Giá bán: ",
                    style: CustomTextStyles.bodySmallInterSecondaryContainer,
                  ),
                ),
                SizedBox(height: 16.v),
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(
                    "Đã mua: ",
                    style: CustomTextStyles.bodySmallInterSecondaryContainer,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Navigates to the settingScreen when the action is triggered
  onTapSetting(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.settingScreen);
  }

  /// Navigates to the cartScreen when the action is triggered
  onTapCartone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.cartScreen);
  }
  
  /// Navigates to the notificationScreen when the action is triggered
  onTapBellone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notificationScreen);
  }
}