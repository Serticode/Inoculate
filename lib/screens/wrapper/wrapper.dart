import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inoculate/router/router.dart';
import 'package:inoculate/router/routes.dart';
import 'package:inoculate/theme/theme.dart';
import 'package:inoculate/utils/app_screen_utils.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> with TickerProviderStateMixin {
  double _liquidProgressIndicatorValue = 0;

  @override
  void initState() {
    startTime();
    super.initState();
  }

  startTime() {
    Timer.periodic(const Duration(milliseconds: 500), (Timer timer) {
      if (timer.tick != 5) {
        setState(() {
          _liquidProgressIndicatorValue = timer.tick / 3;
        });
      } else {
        timer.cancel();
        homeScreenRoute();
      }
    });
  }

  //! MOVE TO HOME SCREEN
  void homeScreenRoute() {
    AppNavigator.navigateToReplacementPage(
        thePageRouteName: AppRoutes.landingPageRoute, context: context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: LayoutBuilder(
            builder: (context, constraints) => Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      //! LOGO
                      Material(
                          elevation: 21.0,
                          shape: const CircleBorder(),
                          shadowColor: AppThemeColours.shadowColour,
                          child: CircleAvatar(
                              radius: constraints.maxWidth * 0.04,
                              backgroundColor: AppThemeColours.tertiaryColour,
                              child: CircleAvatar(
                                  radius: constraints.maxWidth * 0.035,
                                  backgroundColor:
                                      AppThemeColours.secondaryColour,
                                  child: CircleAvatar(
                                      radius: constraints.maxWidth * 0.030,
                                      backgroundImage: const AssetImage(
                                          "assets/inoculate_logo.jpg"))))),

                      //! SPACER
                      AppScreenUtils.verticalSpaceMedium,

                      //! NAME
                      Text("Inoculate",
                          style: GoogleFonts.poppins(
                              color: AppThemeColours.secondaryColour,
                              fontWeight: FontWeight.w500,
                              shadows: [
                                Shadow(
                                    offset: const Offset(1.0, 2.0),
                                    blurRadius: 21.0,
                                    color: AppThemeColours.shadowColour)
                              ],
                              fontSize: 32.0)),

                      //! SPACER
                      AppScreenUtils.verticalSpaceMedium,

                      SizedBox(
                          width: constraints.maxWidth * 0.06,
                          child: LinearProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                  AppThemeColours.secondaryColour),
                              value: _liquidProgressIndicatorValue))
                    ]))));
  }
}
