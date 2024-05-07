import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

class ChipViewCategoryItemWidget extends StatelessWidget {
  const ChipViewCategoryItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 7.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "CATEGORY",
        style: TextStyle(
          color: theme.colorScheme.secondaryContainer.withOpacity(1),
          fontSize: 14.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: false,
      backgroundColor: appTheme.whiteA700,
      selectedColor: appTheme.whiteA700,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: appTheme.green500,
          width: 1.h,
        ),
        borderRadius: BorderRadius.circular(5.h),
      ),
      onSelected: (value) {},
    );
  }
}