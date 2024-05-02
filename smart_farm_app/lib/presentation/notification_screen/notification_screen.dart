import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'widgets/sectionlistbang_item_widget.dart';

// ignore: must_be_immutable
class NotificationScreen extends StatelessWidget {
  NotificationScreen({Key? key}) : super(key: key);

  List sectionlistbangItemList = [
    {'id': 1, 'groupBy': "Ba ngày trước"},
    {'id': 2, 'groupBy': "Một tuần trước"},
    {'id': 3, 'groupBy': "Thứ năm, 14/03/2024"}
  ];
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 6.h,
            vertical: 4.v,
          ),
          child: Column(
            children: [
              _buildRowToday(context),
              SizedBox(height: 2.v),
              _buildRowcloseone(context),
              SizedBox(height: 2.v),
              _buildSectionlistbang(context),
              SizedBox(height: 2.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 56.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftOnprimary,
        margin: EdgeInsets.only(
          left: 32.h,
          top: 12.v,
          bottom: 19.v,
        ),
        onTap: () {
          onTapArrowleft(context);
        },
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "THÔNG BÁO"
      ),
    );
  }

  /// Section Widget
  Widget _buildRowToday(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 5.v,
              bottom: 8.v,
            ),
            child: Text(
              "Hôm nay",
              style: CustomTextStyles.titleLarge20,
            ),
          ),
          SizedBox(
            height: 40.v,
            child: VerticalDivider(
              width: 4.h,
              thickness: 4.v,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowcloseone(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 11.h),
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.outlinedSmallPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgCloseGreen500,
            height: 60.adaptSize,
            width: 60.adaptSize,
            onTap: () {
              onTapImgClose(context);
            },
          ),
          Expanded(
            child: Container(
              width: 270.h,
              margin: EdgeInsets.only(
                left: 24.h,
                top: 5.v,
                right: 10.h,
              ),
              child: Text(
                "Bạn đã thêm trang trại thành công",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.titleLargeSemiBold,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSectionlistbang(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 11.h),
      child: GroupedListView<dynamic, String>(
        shrinkWrap: true,
        stickyHeaderBackgroundColor: Colors.transparent,
        elements: sectionlistbangItemList,
        groupBy: (element) => element['groupBy'],
        sort: false,
        groupSeparatorBuilder: (String value) {
          return Padding(
            padding: EdgeInsets.only(
              top: 28.v,
              bottom: 15.v,
            ),
            child: Text(
              value,
              style: CustomTextStyles.titleLarge20.copyWith(
                color: theme.colorScheme.secondaryContainer.withOpacity(1),
              ),
            ),
          );
        },
        itemBuilder: (context, model) {
          return SectionlistbangItemWidget();
        },
        separator: SizedBox(height: 6.v),
      ),
    );
  }

  /// Navigates back to the previous screen
  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates back to the previous screen
  onTapImgClose(BuildContext context) {
    Navigator.pop(context);
  }
}