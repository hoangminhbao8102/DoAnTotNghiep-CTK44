import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class FarmListItemWidget extends StatelessWidget {
  FarmListItemWidget({Key? key, this.onTapViewDetailButton}) : super(key: key);

  VoidCallback? onTapViewDetailButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360.h,
      padding: EdgeInsets.symmetric(
        horizontal: 25.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineSecondaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFarm,
            height: 50.adaptSize,
            width: 50.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(left: 11.h),
            child: Column(
              children: [
                Container(
                  width: 100.h,
                  margin: EdgeInsets.symmetric(
                    horizontal: 8.h,
                    vertical: 1.v
                  ),
                  decoration: AppDecoration.outlineSecondaryContainer.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder10
                  ),
                  child: Text(
                    "TRANG TRẠI",
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                SizedBox(height: 10.v),
                Container(
                  width: 100.h,
                  margin: EdgeInsets.symmetric(
                    horizontal: 8.h,
                    vertical: 2.v
                  ),
                  decoration: AppDecoration.outlineSecondaryContainer.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder10
                  ),
                  child: Text(
                    "Địa chỉ",
                    style: theme.textTheme.titleSmall,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          _buildViewDetailButton(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildViewDetailButton(BuildContext context) {
    return CustomElevatedButton(
      height: 23.v,
      width: 117.h,
      text: "XEM THÔNG TIN",
      margin: EdgeInsets.only(
        top: 13.v,
        bottom: 14.v,
      ),
      buttonTextStyle: theme.textTheme.titleSmall!,
      onPressed: () {
        onTapViewDetailButton?.call();
      },
    );
  }
}