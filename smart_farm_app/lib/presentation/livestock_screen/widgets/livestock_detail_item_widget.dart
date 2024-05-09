import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_elevated_button.dart';

class LivestockDetailItemWidget extends StatelessWidget {
  LivestockDetailItemWidget({Key? key, this.onTapWatchDetail}) : super(key: key);

  final VoidCallback? onTapWatchDetail;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.outlineGreen.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLivestock,
            height: 50.adaptSize,
            width: 50.adaptSize,
            margin: EdgeInsets.only(bottom: 1.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              bottom: 1.v,
            ),
            child: Column(
              children: [
                Container(
                  width: 100.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.h,
                    vertical: 1.v,
                  ),
                  decoration: AppDecoration.fillWhiteA.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder10
                  ),
                  child: Text(
                    "Tên vật nuôi",
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                SizedBox(height: 10.v),
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
                    "Loại",
                    style: theme.textTheme.bodySmall,
                  ),
                )
              ],
            ),
          ),
          Spacer(),
          _buildWatchDetail(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildWatchDetail(BuildContext context) {
    return CustomElevatedButton(
      height: 23.v,
      width: 117.h,
      text: "XEM THÔNG TIN",
      margin: EdgeInsets.only(
        top: 15.v,
        bottom: 14.v,
      ),
      buttonTextStyle: theme.textTheme.titleSmall!,
      onPressed: () {
        onTapWatchDetail?.call();
      },
    );
  }
}