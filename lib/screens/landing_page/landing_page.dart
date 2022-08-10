import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inoculate/screens/landing_page/pages/about_us.dart';
import 'package:inoculate/screens/landing_page/pages/page_one.dart';
import 'package:inoculate/screens/landing_page/pages/page_three.dart';
import 'package:inoculate/screens/landing_page/pages/page_two.dart';
import 'package:inoculate/theme/theme.dart';
import 'package:inoculate/utils/app_screen_utils.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  static const List<String> _headerElements = [
    "Home",
    "Get Vaccinated",
    "Reports",
    "About Us",
  ];
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: LayoutBuilder(
            builder: (context, constraints) => Column(children: [
                  //! HEADER
                  Container(
                      height: constraints.maxHeight * 0.08,
                      color: AppThemeColours.primaryColour,
                      padding: AppScreenUtils.appUIDefaultPadding,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            //! LOGO AND NAME
                            Row(children: [
                              //! LOGO
                              CircleAvatar(
                                  radius: 20,
                                  backgroundColor:
                                      AppThemeColours.secondaryColour,
                                  child: const CircleAvatar(
                                      radius: 15,
                                      backgroundImage: AssetImage(
                                          "assets/inoculate_logo.jpg"))),

                              //! SPACER
                              const SizedBox(width: 10),

                              //! NAME
                              Text("Inoculate",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      shadows: [
                                        Shadow(
                                            offset: const Offset(1.0, 2.0),
                                            blurRadius: 21.0,
                                            color: AppThemeColours.shadowColour)
                                      ],
                                      fontSize: 16.0))
                            ]),

                            //! SPACER
                            const Spacer(),

                            //! HEADER ELEMENTS
                            Row(
                                children: _headerElements
                                    .map((item) => InkWell(
                                        onTap: () => _scrollToIndex(
                                            _headerElements.indexOf(item)),
                                        child: Container(
                                            margin: const EdgeInsets.symmetric(
                                                horizontal: 5.0),
                                            padding:
                                                AppScreenUtils.headerPadding,
                                            child: Text(item))))
                                    .toList())
                          ])),

                  //! BODY
                  Expanded(
                      child: PageView(
                          controller: controller,
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          pageSnapping: false,
                          children: const [
                        //! FIRST SCREEN
                        PageOne(),

                        //! SECOND SCREEN
                        PageTwo(),

                        //! THIRD SCREEN
                        PageThree(),

                        //! FOOTER
                        AboutUs()
                      ]))
                ])));
  }

  void _scrollToIndex(int index) {
    controller.animateToPage(index,
        duration: const Duration(seconds: 1),
        curve: Curves.fastLinearToSlowEaseIn);
  }
}