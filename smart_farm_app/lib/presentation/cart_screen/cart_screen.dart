import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'widgets/productlist_item_widget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppbar(context),
        body: Padding(
          padding: EdgeInsets.only(
            left: 17.h,
            top: 38.v,
            right: 17.h
          ),
          child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return ProductListItemWidget(
                ontapImgProductImage: () {
                  ontapImgProductImage(context);
                },
              );
            }, 
            separatorBuilder: (context, index) {
              return SizedBox(height: 20.v);
            }, 
            itemCount: 6,
          ),
        ),
      )
    );
  }

  /// Section widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 50.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftOnprimary,
        margin: EdgeInsets.only(
          left: 25.h,
          top: 16.v,
          bottom: 15.v,
        ),
        onTap: () {
          onTapArrowleft(context);
        },
      ),
      title: AppbarTitle(
        text: "DANH SÁCH MUA HÀNG",
        margin: EdgeInsets.only(left: 60.h),
      ),
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
  
  /// Navigates back to the infoProductScreen when the action is triggered
  ontapImgProductImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.infoProductScreen);
  }
}