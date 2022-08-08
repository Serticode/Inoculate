import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inoculate/theme/theme.dart';

class CustomTextWidget extends StatelessWidget {
  final String theText;
  final bool? isThisAHeader;
  final bool? isThisASubheader;
  final bool? isThisABody;
  final bool? isThisAButton;
  const CustomTextWidget(
      {Key? key,
      required this.theText,
      required this.isThisAHeader,
      required this.isThisASubheader,
      required this.isThisABody,
      required this.isThisAButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(theText,
        style: isThisABody!
            ? Theme.of(context).textTheme.bodyText2
            : isThisASubheader!
                ? Theme.of(context).textTheme.bodyText1
                : isThisAHeader!
                    ? Theme.of(context).textTheme.headline2
                    : isThisAButton!
                        ? GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            color: AppThemeColours.textColourPrimary,
                            fontSize: 18.0)
                        : Theme.of(context).textTheme.bodyText2);
  }
}
