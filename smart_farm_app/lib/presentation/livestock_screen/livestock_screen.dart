import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_search_view.dart';
import 'widgets/livestock_detail_item_widget.dart';

// ignore: must_be_immutable
class LivestockScreen extends StatelessWidget {
  LivestockScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppbar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 23.h,
            vertical: 15.v
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 14.h),
                child: CustomSearchView(
                  controller: searchController,
                  hintText: "Tìm kiếm",
                ),
              ),
              SizedBox(height: 35.v),
              _buildLivestockDetail(context)
            ],
          ),
        ),
      ) 
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
          top: 16.v,
          bottom: 14.v,
        ),
        onTap: () {
          onTapArrowleft(context);
        },
      ),
      centerTitle: true,
      title: AppbarTitle(text: "GIA SÚC"),
    );
  }

  /// Section Widget
  Widget _buildLivestockDetail(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return LivestockDetailItemWidget(
            onTapWatchDetail: () {
              onTapWatchDetail(context);
            },
          );
        }, 
        separatorBuilder: (context, index) {
          return SizedBox(height: 20.v);
        }, 
        itemCount: 6
      ),
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the infoLivestockScreen when the action is triggered.
  onTapWatchDetail(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.infoLivestockScreen);
  }
}