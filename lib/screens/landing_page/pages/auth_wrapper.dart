import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inoculate/screens/landing_page/pages/admin_login.dart';
import 'package:inoculate/screens/landing_page/pages/login.dart';
import 'package:inoculate/screens/landing_page/pages/signup.dart';
import 'package:inoculate/theme/theme.dart';
import 'package:inoculate/utils/app_screen_utils.dart';

class AuthWrapper extends StatefulWidget {
  const AuthWrapper({Key? key}) : super(key: key);

  @override
  State<AuthWrapper> createState() => _AuthWrapperState();
}

class _AuthWrapperState extends State<AuthWrapper> {
  final PageController controller = PageController();
  int _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primary,
        body: LayoutBuilder(
            builder: (context, constraints) => Container(
                padding: AppScreenUtils.containerPaddingSmall,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //! LOGO & NAME
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            //! LOGO
                            Material(
                                elevation: 21.0,
                                shape: const CircleBorder(),
                                shadowColor: AppThemeColours.shadowColour,
                                child: CircleAvatar(
                                    radius: 20,
                                    backgroundColor:
                                        AppThemeColours.tertiaryColour,
                                    child: CircleAvatar(
                                        radius: 18,
                                        backgroundColor:
                                            AppThemeColours.secondaryColour,
                                        child: const CircleAvatar(
                                            radius: 15,
                                            backgroundImage: AssetImage(
                                                "assets/inoculate_logo.jpg"))))),

                            //! SPACER
                            const SizedBox(width: 10.0),

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
                                    fontSize: 14.0))
                          ]),

                      //! SPACER
                      const SizedBox(height: 20.0),

                      Expanded(
                          child: PageView(
                              controller: controller,
                              onPageChanged: (value) => setState(() {
                                    _currentPageIndex = value;
                                  }),
                              physics: const NeverScrollableScrollPhysics(),
                              children: [
                            //! USERS
                            Login(theParentConstraints: constraints),
                            SignUp(theParentConstraints: constraints),

                            //! ADMIN
                            AdminLogin(theParentConstraints: constraints)
                          ])),

                      //! SPACER
                      const SizedBox(height: 20.0),

                      //! NOTICE
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //! NOTE
                            Text(_currentPageIndex == 0
                                ? "Haven't been vaccinated yet? \nNo biggie!"
                                : _currentPageIndex == 1
                                    ? "Like to see previous or current test result?"
                                    : "Are you a patient?"),

                            //! AUTH BUTTON
                            ElevatedButton(
                                onPressed: () => _currentPageIndex == 0
                                    ? _scrollToIndex(1)
                                    : _scrollToIndex(0),
                                child: Text(
                                  _currentPageIndex == 0
                                      ? "Create an account"
                                      : _currentPageIndex == 1
                                          ? "Login"
                                          : "User Login",
                                ))
                          ]),

                      //! SPACER
                      const SizedBox(height: 20.0),

                      //! NOTICE
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Staff? "),

                            //! SPACER
                            const SizedBox(width: 20.0),

                            ElevatedButton(
                                onPressed: () => _scrollToIndex(2),
                                child: const Text(
                                  "Test Patient",
                                ))
                          ])
                    ]))));
  }

  void _scrollToIndex(int index) {
    controller.animateToPage(index,
        duration: const Duration(seconds: 1),
        curve: Curves.fastLinearToSlowEaseIn);
  }
}
