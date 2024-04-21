import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

class SectionlistbangItemWidget extends StatelessWidget {
  const SectionlistbangItemWidget({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.outlinedSmallPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgCloseGreen500,
            height: 60.adaptSize,
            width: 60.adaptSize,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 23.h,
                top: 3.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 1.h),
                    child: Text(
                      "Bạn đã mua hàng thành công",
                      style: CustomTextStyles.titleLargeSemiBold,
                    ),
                  ),
                  SizedBox(height: 4.v),
                  Text(
                    "Sản phẩm : ",
                    style: CustomTextStyles.titleLargeLight,
                  )
                ],
              ),
            )
          )
        ],
      ),
    );
  }
}