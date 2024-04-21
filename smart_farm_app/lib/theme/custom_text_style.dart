import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  // Body text style
  static get bodySmallGray800 => theme.textTheme.bodySmall!.copyWith(
    color: appTheme.gray800,
  );
  static get bodySmallInterGreen500 => theme.textTheme.bodySmall!.inter.copyWith(
    color: appTheme.green500,
  );
  static get bodySmallInterPrimary => theme.textTheme.bodySmall!.inter.copyWith(
    color: theme.colorScheme.primary,
  );
  static get bodySmallInterSecondaryContainer => theme.textTheme.bodySmall!.inter.copyWith(
    color: theme.colorScheme.secondaryContainer.withOpacity(1),
  );
  // Title text style
  
  static get bodySmallRobotoOnPrimaryContainer =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
// Title text style
  static get titleLarge20 => theme.textTheme.titleLarge!.copyWith(
    fontSize: 20.fSize,
  );
  static get titleLargeGray10001 => theme.textTheme.titleLarge!.copyWith(
    color: appTheme.gray10001,
  );static get titleLargeGray400 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray400,
        fontWeight: FontWeight.w400,
      );  
  static get titleLargeGray500 => theme.textTheme.titleLarge!.copyWith(
    color: appTheme.gray500,
  );
  static get titleLargeInter => theme.textTheme.titleLarge!.inter;
  static get titleLargeInterRegular => theme.textTheme.titleLarge!.inter.copyWith(
    fontSize: 20.fSize,
    fontWeight: FontWeight.w400,
  );
  static get titleLargeLight => theme.textTheme.titleLarge!.inter.copyWith(
    fontSize: 20.fSize,
    fontWeight: FontWeight.w300,
  );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
    color: theme.colorScheme.primary,
    fontWeight: FontWeight.w700,
  );
  static get titleLargeSemiBold => theme.textTheme.titleLarge!.copyWith(
    fontSize: 20.fSize,
    fontWeight: FontWeight.w700,
  );
  static get titleLargeWhiteA700 => theme.textTheme.titleLarge!.copyWith(
    color: appTheme.whiteA700,
  );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleLargeRedA70001 => theme.textTheme.titleLarge!.copyWith(
    color: appTheme.redA70001,
  );
  static get titleMediumRobotoGreen500 =>
      theme.textTheme.titleMedium!.roboto.copyWith(
        color: appTheme.green500,
        fontSize: 18.fSize,
      );
  static get titleMediumRobotoRedA700 => theme.textTheme.titleMedium!.roboto.copyWith(
    color: appTheme.redA700,
    fontSize: 18.fSize,
    fontWeight: FontWeight.w500,
  );
  static get titleMediumRobotoRedA70001 => theme.textTheme.titleMedium!.roboto.copyWith(
    color: appTheme.redA70001,
    fontSize: 18.fSize,
    fontWeight: FontWeight.w500,
  );
  static get titleMediumRobotoSecondaryContainer => theme.textTheme.titleMedium!.copyWith(
    color: theme.colorScheme.secondaryContainer.withOpacity(1),
    fontSize: 18.fSize,
    fontWeight: FontWeight.w500,
  );
  static get titleMediumRobotoSecondaryContainerMedium => theme.textTheme.titleMedium!.copyWith(
    color: theme.colorScheme.secondaryContainer.withOpacity(1),
    fontWeight: FontWeight.w500,
  );
  static get titleMediumRobotoSecondaryContainerLarge => theme.textTheme.titleMedium!.copyWith(
    color: theme.colorScheme.secondaryContainer.withOpacity(1)
  );
  static get titleMediumSecondaryContainer => theme.textTheme.titleMedium!.copyWith(
    color: theme.colorScheme.secondaryContainer.withOpacity(1)
  );
  static get titleMediumSecondaryContainerMedium => theme.textTheme.titleMedium!.copyWith(
    color: theme.colorScheme.secondaryContainer.withOpacity(1),
    fontWeight: FontWeight.w500,
  );
  static get titleSmallInter => theme.textTheme.titleSmall!.inter;
}
