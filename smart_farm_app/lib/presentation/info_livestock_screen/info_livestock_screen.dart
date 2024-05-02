import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';

class InfoLivestockScreen extends StatelessWidget {
  const InfoLivestockScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppbar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 1.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 210.v,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: appTheme.blueGray100
                ),
              ),
              SizedBox(height: 10.v),
              _buildRowIntroduce(context),
              SizedBox(height: 81.v),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Text(
                  "NUÔI GIỐNG", 
                  style: theme.textTheme.titleLarge
                ),
              ),
              SizedBox(height: 84.v),
              Padding(
                padding: EdgeInsets.only(left: 5.h),
                child: Text(
                  "NUÔI TRỒNG", 
                  style: theme.textTheme.titleLarge
                ),
              ),
              SizedBox(height: 84.v),
              Padding(
                padding: EdgeInsets.only(left: 12.h),
                child: Text(
                  "CHĂM SÓC", 
                  style: theme.textTheme.titleLarge
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
      leadingWidth: 55.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftPrimary,
        margin: EdgeInsets.only(
          left: 30.h,
          top: 17.v,
          bottom: 13.v,
        ),
        onTap: () {
          onTapArrowleft(context);
        },
      ),
      centerTitle: true,
      title: AppbarTitle(text: "THÔNG TIN VỀ BÒ SỮA"),
    );
  }

  /// Section Widget
  Widget _buildRowIntroduce(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 5.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 24.v,
            width: 96.v,
            margin: EdgeInsets.only(top: 17.v),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "GIỚI THIỆU",
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "GIỚI THIỆU",
                    style: theme.textTheme.titleLarge,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40.v,
            child: VerticalDivider(
              width: 4.h,
              thickness: 4.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}