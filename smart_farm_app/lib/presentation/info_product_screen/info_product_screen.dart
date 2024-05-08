import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class InfoProductScreen extends StatelessWidget {
  InfoProductScreen({Key? key}) : super(key: key);

  TextEditingController productNameController = TextEditingController();

  TextEditingController productTypeController = TextEditingController();

  TextEditingController descriptionController = TextEditingController();

  TextEditingController amountController = TextEditingController();

  TextEditingController priceController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppbar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildColumnProductImage(context),
              SizedBox(height: 6.v),
              _buildRowProductName(context),
              SizedBox(height: 10.v),
              _buildRowProductType(context),
              SizedBox(height: 7.v),
              Padding(
                padding: EdgeInsets.only(left: 6.h),
                child: Text(
                  "MÔ TẢ", 
                  style: CustomTextStyles.titleLargeInter,
                ),
              ),
              SizedBox(height: 12.v),
              _buildDescription(context),
              SizedBox(height: 11.v),
              Padding(
                padding: EdgeInsets.only(left: 6.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 11.v,
                        bottom: 13.v,
                      ),
                      child: Text(
                        "SỐ LƯỢNG",
                        style: CustomTextStyles.titleLargeInter,
                      ),
                    ),
                    _buildAmount(context),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 8.h,
                        top: 9.v,
                        bottom: 13.v,
                      ),
                      child: Text(
                        "CÁI",
                        style: CustomTextStyles.titleLargeInter,
                      ),
                    )
                  ]
                ),
              ),
              SizedBox(height: 10.v),
              Padding(
                padding: EdgeInsets.only(left: 6.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 9.v,
                        bottom: 15.v,
                      ),
                      child: Text(
                        "GIÁ BÁN",
                        style: CustomTextStyles.titleLargeInter,
                      ),
                    ),
                    _buildPrice(context),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 7.h,
                        top: 9.v,
                        bottom: 15.v,
                      ),
                      child: Text(
                        "ĐỒNG",
                        style: CustomTextStyles.titleLargeInter,
                      ),
                    )
                  ]
                ),
              ),
              SizedBox(height: 5.v)
            ],
          ),
        ),
        bottomNavigationBar: _buildRowCart(context),
      ),
    );
  }
  
  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 44.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftOnprimary,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 17.v,
          bottom: 14.v,
        ),
        onTap: () {
          onTapArrowleft(context);
        },
      ),
      centerTitle: true,
      title: AppbarSubtitle(text: "THÔNG TIN SẢN PHẨM"),
    );
  }

  /// Section Widget
  Widget _buildColumnProductImage(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 5.h,
        vertical: 140.v,
      ),
      decoration: AppDecoration.outlineGreen,
      child: Text(
        "imageURL",
        style: theme.textTheme.bodySmall,
      ),
    );
  }

  /// Section Widget
  Widget _buildProductName(BuildContext context) {
    return CustomTextFormField(
      width: 257.h,
      controller: productNameController,
      hintText: "TÊN SẢN PHẨM",
    );
  }

  /// Section Widget
  Widget _buildRowProductName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 6.h,
        right: 5.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 10.v,
              bottom: 15.v,
            ),
            child: Text(
              "TÊN SẢN PHẨM",
              style: theme.textTheme.titleLarge,
            )
          ),
          _buildProductName(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProductType(BuildContext context) {
    return CustomTextFormField(
      width: 250.h,
      controller: productTypeController,
      hintText: "LOẠI SẢN PHẨM",
    );
  }

  /// Section Widget
  Widget _buildRowProductType(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 6.h,
        right: 5.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 10.v,
              bottom: 15.v,
            ),
            child: Text(
              "LOẠI SẢN PHẨM",
              style: theme.textTheme.titleLarge,
            )
          ),
          _buildProductType(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDescription(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 6.h,
        right: 5.h,
      ),
      child: CustomTextFormField(
        controller: descriptionController,
        hintText: "Mô tả",
        alignment: Alignment.center,
        maxLines: 7,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 8.h,
          vertical: 30.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAmount(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 15.h),
      child: CustomTextFormField(
        width: 49.h,
        controller: amountController,
        hintText: "CÁI",
      ),
    );
  }

  /// Section Widget
  Widget _buildPrice(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 15.h),
      child: CustomTextFormField(
        width: 73.h,
        controller: priceController,
        hintText: "CÁI",
        textInputAction: TextInputAction.done,
      ),
    );
  }

  /// Section Widget
  Widget _buildRowCart(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 48.h),
      child: Row( 
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 8.v,
              bottom: 15.v,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  onTap: () {
                    onTapColumnCart(context);
                  },
                  child: Container(
                    decoration: AppDecoration.outlineSmallestPrimary,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgCart,
                          height: 40.adaptSize,
                          width: 40.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 6.v),
                          child: Text(
                            "THÊM VÀO GIỎ HÀNG",
                            style: CustomTextStyles.bodySmallInterSecondaryContainer,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              onTapColumnPrice(context);
            },
            child: Container(
              margin: EdgeInsets.only(left: 42.h),
              padding: EdgeInsets.symmetric(
                horizontal: 27.h,
                vertical: 23.v,
              ),
              decoration: AppDecoration.fillPrimary,
              child: Text(
                "MUA NGAY",
                style: theme.textTheme.headlineLarge,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates back to the homePage when the action is triggered
  onTapColumnCart(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homePage);
  }

  /// Navigates back to the buyerInformationScreen when the action is triggered
  onTapColumnPrice(BuildContext context) {
    
  }
}