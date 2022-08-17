// ! SIMPLE LANDING PAGE & DASHBOARD, FOR A VACCINE ADMINISTRATION SYSTEM.
// ! THIS SYSTEM IS BUILT ON THE THOUGHT PROCESS ...
// ! THAT THERE IS A PREEXISTING DATABASE FOR USERS AND DOCTORS
// ! AND THAT EXTERNAL DEVICES FOR TESTING CULTURES, SUCH AS NASAL SAMPLES ...
// ! URINE OR BLOOD, IS ATTACHED TO THE COMPUTING DEVICE.
// ! A SECTION FOR THE COMPUTING DEVICE, WAS NOT MADE HOWEVER.

// ! ON THE LANDING PAGE, USERS CAN LEARN ABOUT VARYING VACCINES ...
// ! READ ARTICLES ABOUT SAID VIRUS AND MEET THE TEAM THAT COMPLIED THIS PROJECT.

// !FEEL FREE TO USE TEMPLATE AT WILL.

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inoculate/router/router.dart';
import 'package:inoculate/screens/landing_page/pages/auth_wrapper.dart';
import 'package:inoculate/screens/wrapper/wrapper.dart';
import 'package:inoculate/theme/theme.dart';

void main() {
  runApp(const Inoculate());
}

class Inoculate extends StatelessWidget {
  const Inoculate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.theTheme,
        onGenerateRoute: AppNavigator.generateRoute,
        //! SCROLL BEHAVIOUR CLASS, ACCEPTING ONLY TWO TYPES OF SCROLL DEVICES;
        //! MOUSE AND TOUCH.
        scrollBehavior: const MaterialScrollBehavior().copyWith(dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown
        }),
        home: LayoutBuilder(
            builder: (context, constraints) => ScreenUtilInit(
                designSize: Size(constraints.maxWidth, constraints.maxHeight),
                builder: (context, widget) => const Wrapper())));
  }
}
