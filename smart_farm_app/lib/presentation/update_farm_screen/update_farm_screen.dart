import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'widgets/update_farm_item_widget.dart';

class UpdateFarmScreen extends StatelessWidget {
  const UpdateFarmScreen({Key? key}) : super (key: key);
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppbar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 5.h,
            vertical: 12.v,
          ),
          child: Column(
            children: [
              Text(
                "Danh sách trang trại hiện có",
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 42.v),
              Divider(
                color: theme.colorScheme.secondaryContainer,
              ),
              _buildUpdateFarm(context),
            ],
          ),
        ),
      )
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 57.h,
      leading: Container(
        height: 24.adaptSize,
        width: 24.adaptSize,
        margin: EdgeInsets.only(
          left: 33.h,
          top: 16.v,
          bottom: 15.v,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgArrowLeftOnprimary,
              height: 24.adaptSize,
              width: 24.adaptSize,
              alignment: Alignment.center,
              onTap: () {
                onTapImgArrowleftone(context);
              },
            ),
            CustomImageView(
              imagePath: ImageConstant.imgArrowLeftOnprimary,
              height: 24.adaptSize,
              width: 24.adaptSize,
              alignment: Alignment.center,
            )
          ],
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(text: "THÔNG TIN TRANG TRẠI"),
    );
  }

  /// Section Widget
  Widget _buildUpdateFarm(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 29.h),
        child: ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return UpdateFarmItemWidget();
          }, 
          separatorBuilder: (context, index) {
            return SizedBox(height: 1.v);
          }, 
          itemCount: 7,
        ),
      ),
    );
  }

  /// Navigates back to the previous screen.
  onTapImgArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}