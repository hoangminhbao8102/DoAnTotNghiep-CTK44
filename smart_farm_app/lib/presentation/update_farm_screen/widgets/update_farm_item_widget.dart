import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

class UpdateFarmItemWidget extends StatelessWidget {
  const UpdateFarmItemWidget({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        child: SizedBox(
          height: 40.v,
          child: VerticalDivider(
            width: 4.h,
            thickness: 4.v,
          ),
        ),
      ),
    );
  }
}