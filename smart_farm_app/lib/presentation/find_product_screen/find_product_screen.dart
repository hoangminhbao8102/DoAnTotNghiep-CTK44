import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_search_view.dart';
import 'widgets/chipviewcategory_item_widget.dart';

// ignore: must_be_immutable
class FindProductScreen extends StatelessWidget {
  FindProductScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 6.h,
            vertical: 12.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildRowArrowLeft(context),
              SizedBox(height: 18.v),
              Padding(
                padding: EdgeInsets.only(left: 17.h),
                child: Text(
                  "DANH MỤC",
                  style: CustomTextStyles.titleLargeInterRegular,
                ),
              ),
              SizedBox(height: 12.v),
              _buildChipViewCategory(context),
              SizedBox(height: 12.v),
              Padding(
                padding: EdgeInsets.only(left: 17.h),
                child: Text(
                  "CÁC SẢN PHẨM",
                  style: CustomTextStyles.titleLargeInterRegular,
                ),
              ),
              SizedBox(height: 12.v),
              Divider(color: theme.colorScheme.secondaryContainer),
              SizedBox(height: 17.v),
              _buildRowView(context),
              SizedBox(height: 16.v),
              _buildRowView(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      )
    );
  }

  /// Section Widget
  Widget _buildRowArrowLeft(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 14.h,
        right: 5.h,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgArrowLeftPrimary,
            height: 25.adaptSize,
            width: 25.adaptSize,
            margin: EdgeInsets.only(
              top: 17.v,
              bottom: 18.v,
            ),
            onTap: () {
              onTapImgArrowLeft(context);
            },
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 6.h),
              child: CustomSearchView(
                controller: searchController,
                hintText: "Tìm kiếm",
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget 
  Widget _buildChipViewCategory(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Wrap(
        runSpacing: 36.v,
        spacing: 36.h,
        children: List<Widget>.generate(9, (index) => ChipViewCategoryItemWidget()),
      ),
    );
  }

  /// Section Widget
  Widget _buildWatchDetail(BuildContext context) {
    return CustomElevatedButton(
      width: 120.h,
      text: "XEM CHI TIẾT",
      onPressed: () {
        onTapWatchDetail(context);
      },
      alignment: Alignment.center,
    );
  } 
   
  /// Section Widget
  Widget _buildRowView(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 28.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: EdgeInsets.only(top: 2.v),
              padding: EdgeInsets.symmetric(
                horizontal: 7.h,
                vertical: 9.v,
              ),
              decoration: AppDecoration.outlinedPrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder15
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 100.v,
                    width: 125.h,
                    decoration: BoxDecoration(
                      color: appTheme.blueGray100,
                    ),
                  ),
                  SizedBox(height: 9.v),
                  Text(
                    "TÊN SẢN PHẨM",
                    style: CustomTextStyles.bodySmallInterSecondaryContainer,
                  ),
                  SizedBox(height: 17.v),
                  Text(
                    "Loại",
                    style: CustomTextStyles.bodySmallInterSecondaryContainer,
                  ),
                  SizedBox(height: 13.v),
                  Text(
                    "Giá bán",
                    style: CustomTextStyles.bodySmallInterSecondaryContainer,
                  ),
                  SizedBox(height: 16.v),
                  _buildWatchDetail(context)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 18.h,
                top: 2.v,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 7.h,
                vertical: 9.v,
              ),
              decoration: AppDecoration.outlinedPrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder15
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 100.v,
                      width: 125.h,
                      decoration: BoxDecoration(
                        color: appTheme.blueGray100,
                      ),
                    ), 
                  ),
                  SizedBox(height: 9.v),
                  Text(
                    "TÊN SẢN PHẨM",
                    style: CustomTextStyles.bodySmallInterSecondaryContainer,
                  ),
                  SizedBox(height: 17.v),
                  Text(
                    "Loại",
                    style: CustomTextStyles.bodySmallInterSecondaryContainer,
                  ),
                  SizedBox(height: 13.v),
                  Text(
                    "Giá bán",
                    style: CustomTextStyles.bodySmallInterSecondaryContainer,
                  ),
                  SizedBox(height: 16.v),
                  _buildWatchDetail(context)
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 18.h),
              child: SizedBox(
                height: 252.v,
                child: VerticalDivider(
                  width: 4.h,
                  thickness: 4.v,
                  endIndent: 212.h,
                ),
              ),
            )
          ],
        ),
      ),
    );
  } 
   
  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the infoProductScreen when the action is triggered.
  onTapWatchDetail(BuildContext context) {
    Navigator.pop(context);
  }
}