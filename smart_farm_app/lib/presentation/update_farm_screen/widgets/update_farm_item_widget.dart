import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

// ignore: must_be_immutable
class UpdateFarmItemWidget extends StatelessWidget {
  UpdateFarmItemWidget({Key? key, this.onTapImgSettingImage}) : super(key: key);

  VoidCallback? onTapImgSettingImage;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360.h,
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.outlineGreen.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFarm,
            height: 50.adaptSize,
            width: 50.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(left: 22.h),
            child: Column(
              children: [
                Container(
                  width: 100.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.h,
                    vertical: 1.v
                  ),
                  decoration: AppDecoration.fillWhiteA.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder10
                  ),
                  child: Text(
                    "TRANG TRẠI",
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                SizedBox(height: 10.v),
                Container(
                  width: 100.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.h,
                    vertical: 2.v,
                  ),
                  decoration: AppDecoration.fillWhiteA.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder10
                  ),
                  child: Text(
                    "TRANG TRẠI",
                    style: theme.textTheme.bodySmall,
                  ),
                )
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgSetting,
            height: 25.adaptSize,
            width: 25.adaptSize,
            margin: EdgeInsets.only(
              top: 12.v,
              bottom: 13.v,
            ),
            onTap: () {
              onTapImgSettingImage?.call();
            },
          ),
          CustomImageView(
            imagePath: ImageConstant.imgThumbsupRedA700,
            height: 25.adaptSize,
            width: 25.adaptSize,
            margin: EdgeInsets.only(
              left: 14.h,
              top: 13.v,
              bottom: 13.v,
            ),
          ),
        ],
      ),
    );
  }
}