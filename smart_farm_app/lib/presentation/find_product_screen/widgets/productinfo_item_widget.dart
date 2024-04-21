import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

class ProductInfoItemWidget extends StatelessWidget {
  const ProductInfoItemWidget({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: EdgeInsets.only(top: 17.v),
          padding: EdgeInsets.symmetric(
            horizontal: 12.h,
            vertical: 10.v,
          ),
          decoration: AppDecoration.outlinedSmallerPrimary.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder15,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 100.v,
                width: 130.v,
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
              )
            ],
          ),
        ),
      ),
    );
  }
}