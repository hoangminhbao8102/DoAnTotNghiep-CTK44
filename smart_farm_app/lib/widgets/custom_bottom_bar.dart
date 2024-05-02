import 'package:flutter/material.dart';
import '../core/app_export.dart';

enum BottomBarEnum { Information, Product, Statistic, Account }

// ignore: must_be_immutable
class CustomButtonBar extends StatefulWidget {
  CustomButtonBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomButtonBarState createState() => CustomButtonBarState();
}

class CustomButtonBarState extends State<CustomButtonBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imageNavInformation,
      activeIcon: ImageConstant.imageNavInformation,
      title: "THÔNG TIN",
      type: BottomBarEnum.Information,
    ),
    BottomMenuModel(
      icon: ImageConstant.imageNavProduct,
      activeIcon: ImageConstant.imageNavProduct,
      title: "SẢN PHẨM",
      type: BottomBarEnum.Product,
    ),
    BottomMenuModel(
      icon: ImageConstant.imageNavStatistic,
      activeIcon: ImageConstant.imageNavStatistic,
      title: "THỐNG KÊ",
      type: BottomBarEnum.Statistic,
    ),
    BottomMenuModel(
      icon: ImageConstant.imageNavAccount,
      activeIcon: ImageConstant.imageNavAccount,
      title: "TÀI KHOẢN",
      type: BottomBarEnum.Account,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.v,
      decoration: BoxDecoration(color: appTheme.whiteA700),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false, 
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: bottomMenuList[index].icon,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  color: theme.colorScheme.primary,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 4.v),
                  child: Text(
                    bottomMenuList[index].title ?? "",
                    style: CustomTextStyles.bodySmallInterPrimary.copyWith(
                      color: theme.colorScheme.primary
                    ),
                  ),
                )
              ],
            ),
            activeIcon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: bottomMenuList[index].activeIcon,
                  height: 24.v,
                  width: 25.h,
                  color: theme.colorScheme.primary,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 7.v),
                  child: Text(
                    bottomMenuList[index].title ?? "",
                    style: CustomTextStyles.bodySmallInterPrimary.copyWith(
                      color: theme.colorScheme.primary
                    ),
                  ),
                )
              ],
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

class BottomMenuModel {
  BottomMenuModel({required this.icon, required this.activeIcon, this.title, required this.type});

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffffffff),
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Vui lòng thay thế Widget tương ứng tại đây',
              style: TextStyle(fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
  
}