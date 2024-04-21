import 'package:flutter/material.dart';
import '../../core/app_export.dart';

class BuyerInformationScreen extends StatelessWidget{
  const BuyerInformationScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 23.v),
              Padding(
                padding: EdgeInsets.only(left: 27.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgArrowLeftOnprimary,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(top: 1.v),
                      onTap: () {
                        onTapImgArrowleftone(context);
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 58.h),
                      child: Text(
                        "THÔNG TIN NGƯỜI MUA",
                        style: theme.textTheme.titleLarge,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 13.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 17.h,
                  right: 99.h,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 152.v,
                      width: 136.h,
                      decoration: BoxDecoration(color: appTheme.blueGray100),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 75.h,
                        top: 8.v,
                        bottom: 119.v,
                      ),
                      child: Text(
                        "THÔNG TIN",
                        style: theme.textTheme.titleLarge,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 13.v),
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Text(
                  "CHI TIẾT",
                  style: theme.textTheme.titleLarge,
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(left: 22.h),
                child: Text(
                  "PHƯƠNG THỨC",
                  style: theme.textTheme.titleLarge,
                ),
              ),
              SizedBox(height: 75.v),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(left: 25.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 15.v),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "KHUYẾN MÃI",
                                style: theme.textTheme.titleLarge,
                              ),
                            ),
                            SizedBox(height: 376.v),
                            Text(
                              "Tổng thanh toán",
                              style: CustomTextStyles.bodySmallInterSecondaryContainer,
                            ),
                            SizedBox(height: 22.v),
                            Text(
                              "Đ:88.888",
                              style: CustomTextStyles.bodySmallInterGreen500,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: 12.h,
                          top: 383.v,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 27.h,
                          vertical: 23.v,
                        ),
                        decoration: AppDecoration.fillPrimary,
                        child: Text(
                          "ĐẠT HÀNG",
                          style: theme.textTheme.headlineLarge,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Navigates back to the previous screen.
  onTapImgArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}