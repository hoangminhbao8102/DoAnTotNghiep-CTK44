import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_search_view.dart';
import 'widgets/farmlist_item_widget.dart';

// ignore: must_be_immutable
class InfoAllFarmScreen extends StatelessWidget {
  InfoAllFarmScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray10002,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppbar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 11.h,
            vertical: 15.v
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 12.h,
                  right: 26.h,
                ),
                child: CustomSearchView(
                  controller: searchController,
                  hintText: "Tìm kiếm",
                ),
              ),
              SizedBox(height: 30.v),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(left: 26.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildFarmList(context),
                      Padding(
                        padding: EdgeInsets.only(left: 18.h),
                        child: SizedBox(
                          height: 550.v,
                          child: VerticalDivider(
                            width: 4.h,
                            thickness: 4.v,
                            endIndent: 510.h,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 88.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 72.h,
                  right: 60.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgCreate,
                      height: 100.adaptSize,
                      width: 100.adaptSize,
                      onTap: () {
                        onTapImgClose(context);
                      },
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            onTapStackedUpdate(context);
                          },
                          child: Container(
                            height: 100.adaptSize,
                            width: 100.adaptSize,
                            padding: EdgeInsets.all(22.h),
                            decoration: AppDecoration.outlinePrimary.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder50
                            ),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgEdit,
                              height: 45.adaptSize,
                              width: 45.adaptSize,
                              alignment: Alignment.center,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 7.v)
            ],
          )
        ),
      )
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 47.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftOnprimary,
        margin: EdgeInsets.only(
          left: 23.h,
          top: 17.v,
          bottom: 15.v,
        ),
        onTap: () {
          onTapArrowleft(context);
        },
      ),
      centerTitle: true,
      title: AppbarTitle(text: "THÔNG TIN TRANG TRẠI"),
    );
  }

  /// Section Widget
  Widget _buildFarmList(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(top: 20.v),
        child: ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(height: 20.v);
          },
          itemCount: 5,
          itemBuilder: (context, index) {
            return FarmListItemWidget(
              onTapViewDetailButton: () {
                onTapViewDetailButton(context);
              },
            );
          },
        ),
      ),
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the infoFarmScreen when the action is triggered
  onTapViewDetailButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.infoFarmScreen);
  }

  /// Navigates to the createFarmScreen when the action is triggered
  onTapImgClose(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.createFarmScreen);
  }

  /// Navigates to the updateFarmScreen when the action is triggered
  onTapStackedUpdate(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.updateFarmScreen);
  }
}