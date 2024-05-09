import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';

class StatisticalScreen extends StatelessWidget {
  const StatisticalScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppbar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 22.h,
            vertical: 17.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "DOANH THU",
                style: theme.textTheme.titleLarge,
              ),
              Spacer(flex: 20),
              Text(
                "LỢI NHUẬN",
                style: theme.textTheme.titleLarge,
              ),
              Spacer(flex: 25),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  "SỐ LƯỢNG BÁN",
                  style: theme.textTheme.titleLarge,
                ),
              ),
              Spacer(flex: 16),
              Padding(
                padding: EdgeInsets.only(left: 3.h),
                child: Text(
                  "SỐ LƯỢNG CON",
                  style: theme.textTheme.titleLarge,
                ),
              ),
              Spacer(flex: 39),
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
          left: 35.h,
          top: 17.v,
          bottom: 14.v
        ),
        onTap: () {
          onTapArrowleft(context);
        },
      ),
      centerTitle: true,
      title: AppbarSubtitle(text: "THỐNG KÊ"),
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}