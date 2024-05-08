import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

// ignore: must_be_immutable
class ProductListItemWidget extends StatelessWidget {
  ProductListItemWidget({Key? key, this.ontapImgProductImage}) : super(key: key);

  VoidCallback? ontapImgProductImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 17.v),
      decoration: AppDecoration.outlineGreen.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 60.adaptSize,
            width: 60.adaptSize,
            decoration: BoxDecoration(
              color: appTheme.blueGray100
            ),
          ),
          Container(
            width: 263.h,
            margin: EdgeInsets.only(
              left: 19.h,
              bottom: 3.v,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  children: [
                    Container(
                      width: 100.h,
                      padding: EdgeInsets.symmetric(
                        horizontal: 5.h,
                        vertical: 1.v,
                      ),
                      decoration: AppDecoration.white.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder10,
                      ),
                      child: Text(
                        "TÊN SẢN PHẨM",
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                    SizedBox(height: 17.v),
                    Container(
                      width: 100.h,
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.h,
                        vertical: 1.v,
                      ),
                      decoration: AppDecoration.white.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder10,
                      ),
                      child: Text(
                        "GIÁ BÁN",
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgSetting,
                  height: 25.adaptSize,
                  width: 25.adaptSize,
                  margin: EdgeInsets.only(
                    top: 20.v,
                    bottom: 12.v,
                  ),
                  onTap: () {
                    ontapImgProductImage?.call();
                  },
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgThumbsupRedA700,
                  height: 25.adaptSize,
                  width: 25.adaptSize,
                  margin: EdgeInsets.only(
                    top: 20.v,
                    bottom: 12.v,
                  ),
                  onTap: () {
                    ontapImgProductImage?.call();
                  },
                )
              ],
            ),
          )
        ],
      )
    );
  }
}