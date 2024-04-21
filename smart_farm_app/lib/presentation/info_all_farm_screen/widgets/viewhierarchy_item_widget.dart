import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

class ViewhierarchyItemWidget extends StatelessWidget {
  const ViewhierarchyItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 25.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineSecondaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFarm,
            height: 50.adaptSize,
            width: 50.adaptSize,
            margin: EdgeInsets.only(
              top: 6.v,
              bottom: 2.v,
            ),
          ),
          Container(
            width: 158.h,
            margin: EdgeInsets.only(
              left: 16.h,
              bottom: 21.v
            ),
            child: Text(
              "TRANG TRẠI \nĐịa chỉ: ",
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.titleSmall,
            ),
          )
        ],
      ),
    );
  }
}