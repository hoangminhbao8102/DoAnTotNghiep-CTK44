import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_search_view.dart';
import 'widgets/chipviewcategory_item_widget.dart';
import 'widgets/productinfo_item_widget.dart';

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
            horizontal: 5.h,
            vertical: 12.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildRowArrowLeft(context),
              SizedBox(height: 18.v),
              Padding(
                padding: EdgeInsets.only(left: 18.h),
                child: Text(
                  "DANH MỤC",
                  style: CustomTextStyles.titleLargeInterRegular,
                ),
              ),
              SizedBox(height: 12.v),
              _buildChipViewCategory(context),
              SizedBox(height: 12.v),
              Padding(
                padding: EdgeInsets.only(left: 18.h),
                child: Text(
                  "CÁC SẢN PHẨM",
                  style: CustomTextStyles.titleLargeInterRegular,
                ),
              ),
              SizedBox(height: 12.v),
              Divider(color: theme.colorScheme.secondaryContainer),
              SizedBox(height: 9.v),
              _buildProductInfo(context),
              SizedBox(height: 20.v),
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
  Widget _buildProductInfo(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 237.v,
        child: ListView.separated(
          padding: EdgeInsets.only(left: 27.h),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return ProductInfoItemWidget();
          },  
          separatorBuilder: (context, index) {
            return SizedBox(width: 57.h);
          },   
          itemCount: 3,
        ),
      ),
    );
  }
   
  /// Section Widget
  Widget _buildRowView(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 23.h,
          right: 30.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12.h,
                vertical: 10.v,
              ),
              decoration: AppDecoration.outlinedSmallerPrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder15
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 100.v,
                    width: 130.h,
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
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12.h,
                vertical: 10.v,
              ),
              decoration: AppDecoration.outlinedSmallerPrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder15
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 100.v,
                    width: 130.h,
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
                  ),
                ],
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
}