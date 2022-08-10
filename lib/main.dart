import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inoculate/router/router.dart';
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
