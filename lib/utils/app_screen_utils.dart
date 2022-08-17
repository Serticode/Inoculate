import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppScreenUtils {
  //! PADDING
  static const EdgeInsets appUIDefaultPadding =
      EdgeInsets.symmetric(vertical: 6.0, horizontal: 250.0);
  static const EdgeInsets headerPadding =
      EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0);
  static const EdgeInsets headerButtonPadding =
      EdgeInsets.symmetric(vertical: 21.0, horizontal: 24.0);
  static const EdgeInsets listOfVaccinesPadding =
      EdgeInsets.symmetric(vertical: 16.0, horizontal: 21.0);
  static const EdgeInsets dashboardNavPadding =
      EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0);
  static const EdgeInsets containerPaddingSmall =
      EdgeInsets.symmetric(vertical: 8.0, horizontal: 21.0);
  static const EdgeInsets containerPaddingTiny =
      EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0);
  static const EdgeInsets elevatedButtonDefaultPadding =
      EdgeInsets.symmetric(vertical: 18.0, horizontal: 21.0);
  static const EdgeInsets textFormFieldDefaultPadding =
      EdgeInsets.symmetric(vertical: 18.0, horizontal: 32.0);

  //! SPACERS
  static Widget horizontalSpaceSmall = SizedBox(width: 10.0.w);
  static Widget horizontalSpaceMedium = SizedBox(width: 25.0.w);
  static Widget horizontalSpaceLarge = SizedBox(width: 75.0.w);

  static Widget verticalSpaceSmall = SizedBox(height: 10.0.h);
  static Widget verticalSpaceMedium = SizedBox(height: 25.0.h);
  static Widget verticalSpaceLarge = SizedBox(height: 40.0.h);
}
