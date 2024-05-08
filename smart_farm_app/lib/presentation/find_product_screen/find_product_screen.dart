import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
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
              SizedBox(height: 17.v),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(left: 21.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 3.v),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 9.h,
                                vertical: 10.v,
                              ),
                              decoration: AppDecoration.outlinePrimary.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder15,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 1.v),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      height: 100.v,
                                      width: 125.h,
                                      decoration: BoxDecoration(
                                        color: appTheme.blueGray100
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 9.v),
                                  Container(
                                    width: 100.h,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 5.h,
                                      vertical: 1.v,
                                    ),
                                    decoration: AppDecoration.white.copyWith(
                                      borderRadius: BorderRadiusStyle.circleBorder10
                                    ),
                                    child: Text(
                                      "TÊN SẢN PHẨM",
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                  SizedBox(height: 11.v),
                                  _buildRowCategory(context, category: ""),
                                  SizedBox(height: 9.v),
                                  _buildRowPrice(context, price: 0),
                                  SizedBox(height: 10.v),
                                  _buildWatchDetail(context)
                                ],
                              ),
                            ),
                            SizedBox(height: 20.v),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 9.h,
                                vertical: 10.v,
                              ),
                              decoration: AppDecoration.outlinePrimary.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder15,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 1.v),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      height: 100.v,
                                      width: 125.h,
                                      decoration: BoxDecoration(
                                        color: appTheme.blueGray100
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 9.v),
                                  Container(
                                    width: 100.h,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 5.h,
                                      vertical: 1.v,
                                    ),
                                    decoration: AppDecoration.white.copyWith(
                                      borderRadius: BorderRadiusStyle.circleBorder10
                                    ),
                                    child: Text(
                                      "TÊN SẢN PHẨM",
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                  SizedBox(height: 11.v),
                                  _buildRowCategory(context, category: ""),
                                  SizedBox(height: 9.v),
                                  _buildRowPrice(context, price: 0),
                                  SizedBox(height: 10.v),
                                  _buildWatchDetail(context)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(top: 3.v),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 9.h,
                                vertical: 10.v,
                              ),
                              decoration: AppDecoration.outlinePrimary.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder15,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 1.v),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      height: 100.v,
                                      width: 125.h,
                                      decoration: BoxDecoration(
                                        color: appTheme.blueGray100
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 9.v),
                                  Container(
                                    width: 100.h,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 5.h,
                                      vertical: 1.v,
                                    ),
                                    decoration: AppDecoration.white.copyWith(
                                      borderRadius: BorderRadiusStyle.circleBorder10
                                    ),
                                    child: Text(
                                      "TÊN SẢN PHẨM",
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                  SizedBox(height: 11.v),
                                  _buildRowCategory(context, category: ""),
                                  SizedBox(height: 9.v),
                                  _buildRowPrice(context, price: 0),
                                  SizedBox(height: 10.v),
                                  _buildWatchDetail(context)
                                ],
                              ),
                            ),
                            SizedBox(height: 20.v),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 9.h,
                                vertical: 10.v,
                              ),
                              decoration: AppDecoration.outlinePrimary.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder15,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 1.v),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      height: 100.v,
                                      width: 125.h,
                                      decoration: BoxDecoration(
                                        color: appTheme.blueGray100
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 9.v),
                                  Container(
                                    width: 100.h,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 5.h,
                                      vertical: 1.v,
                                    ),
                                    decoration: AppDecoration.white.copyWith(
                                      borderRadius: BorderRadiusStyle.circleBorder10
                                    ),
                                    child: Text(
                                      "TÊN SẢN PHẨM",
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                  SizedBox(height: 11.v),
                                  _buildRowCategory(context, category: ""),
                                  SizedBox(height: 9.v),
                                  _buildRowPrice(context, price: 0),
                                  SizedBox(height: 10.v),
                                  _buildWatchDetail(context)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: SizedBox(
                          height: 523.v,
                          child: VerticalDivider(
                            width: 4.h,
                            thickness: 4.v,
                            endIndent: 483.h,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
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
        left: 15.h,
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
      buttonStyle: CustomButtonStyles.fillPrimary,
      onPressed: () {
        onTapWatchDetail(context);
      },
      alignment: Alignment.center,
    );
  } 
   
  /// Common Widget
  Widget _buildRowCategory(BuildContext context, { required String category }) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 2.v),
          child: Text(
            "Loại: ",
            style: CustomTextStyles.bodySmallInterSecondaryContainer.copyWith(
              color: theme.colorScheme.secondaryContainer.withOpacity(1),
            ),
          ),
        ),
        Container(
          width: 100.h,
          margin: EdgeInsets.only(left: 2.h),
          padding: EdgeInsets.symmetric(
            horizontal: 8.h,
            vertical: 1.v
          ),
          decoration: AppDecoration.white.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder10
          ),
          child: Text(
            category,
            style: theme.textTheme.bodySmall!.copyWith(
              color: theme.colorScheme.onPrimaryContainer,
            ),
          ),
        )
      ]
    );
  } 

  /// Common Widget
  Widget _buildRowPrice(BuildContext context, { required double price }) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 4.v),
          child: Text(
            "Giá bán: ",
            style: CustomTextStyles.bodySmallInterSecondaryContainer.copyWith(
              color: theme.colorScheme.secondaryContainer.withOpacity(1),
            ),
          ),
        ),
        Container(
          width: 62.h,
          margin: EdgeInsets.only(left: 1.h),
          padding: EdgeInsets.symmetric(
            horizontal: 8.h,
            vertical: 2.v
          ),
          decoration: AppDecoration.white.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder10
          ),
          child: Text(
            price as String,
            style: theme.textTheme.bodySmall!.copyWith(
              color: theme.colorScheme.onPrimaryContainer,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 2.h,
            bottom: 3.v,
          ),
          child: Text(
            "Đ",
            style: CustomTextStyles.bodySmallInterSecondaryContainer.copyWith(
              color: theme.colorScheme.secondaryContainer.withOpacity(1),
            ),
          ),
        )
      ],
    );
  }
   
  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the infoProductScreen when the action is triggered.
  onTapWatchDetail(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.infoProductScreen);
  }
}