import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

class UserprofileItemWidget extends StatelessWidget{
  const UserprofileItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70.h,
      child: Column(
        children: [
          Container(
            height: 70.adaptSize,
            width: 70.adaptSize,
            padding: EdgeInsets.all(10.h),
            decoration: AppDecoration.outlinedGreen.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder15,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgCow,
              height: 40.adaptSize,
              width: 40.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          SizedBox(height: 8.v),
          Text(
            "GIA SÚC",
            style: CustomTextStyles.titleSmallInter,
          ),
          /*Container(
            height: 70.adaptSize,
            width: 70.adaptSize,
            padding: EdgeInsets.all(10.h),
            decoration: AppDecoration.outlinedGreen.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder15,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgChicken,
              height: 40.adaptSize,
              width: 40.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          SizedBox(height: 8.v),
          Text(
            "GIA CẦM",
            style: CustomTextStyles.titleSmallInter,
          ),
          Container(
            height: 70.adaptSize,
            width: 70.adaptSize,
            padding: EdgeInsets.all(10.h),
            decoration: AppDecoration.outlinedGreen.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder15,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgPet,
              height: 40.adaptSize,
              width: 40.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          SizedBox(height: 8.v),
          Text(
            "THÚ CƯNG",
            style: CustomTextStyles.titleSmallInter,
          )*/
        ],
      ),
    );
  }
}