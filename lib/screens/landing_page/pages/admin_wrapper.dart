import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inoculate/screens/landing_page/pages/admin_dashboard.dart';
import 'package:inoculate/screens/landing_page/pages/admin_edit_details.dart';
import 'package:inoculate/screens/landing_page/pages/admin_edit_patient_details.dart';
import 'package:inoculate/theme/theme.dart';
import 'package:inoculate/utils/app_screen_utils.dart';

class AdminLayoutWrapper extends StatefulWidget {
  const AdminLayoutWrapper({Key? key}) : super(key: key);
  @override
  State<AdminLayoutWrapper> createState() => _AdminLayoutWrapperState();
}

class _AdminLayoutWrapperState extends State<AdminLayoutWrapper> {
  static const List<String> _userOptions = [
    "Dashboard",
    "Edit Patient Data",
    "Edit Bio"
  ];
  static const List<IconData> _userOptionsIcons = [
    Icons.dashboard_outlined,
    Icons.report_outlined,
    Icons.edit_outlined
  ];
  final PageController controller = PageController();
  int _selectedView = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: LayoutBuilder(
            builder: (context, constraints) => Row(children: [
                  //! RIGHT SIDE
                  Expanded(
                      flex: 1,
                      child: LayoutBuilder(
                          builder: (context, constraints) => Padding(
                              padding: AppScreenUtils.containerPaddingTiny,
                              child: Column(children: [
                                //! LOGO & NAME
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      //! LOGO
                                      Material(
                                          elevation: 21.0,
                                          shape: const CircleBorder(),
                                          shadowColor:
                                              AppThemeColours.shadowColour,
                                          child: CircleAvatar(
                                              radius: 20,
                                              backgroundColor: AppThemeColours
                                                  .tertiaryColour,
                                              child: CircleAvatar(
                                                  radius: 18,
                                                  backgroundColor:
                                                      AppThemeColours
                                                          .secondaryColour,
                                                  child: const CircleAvatar(
                                                      radius: 15,
                                                      backgroundImage: AssetImage(
                                                          "assets/inoculate_logo.jpg"))))),

                                      //! SPACER
                                      const SizedBox(width: 10.0),

                                      //! NAME
                                      Text("Inoculate",
                                          style: GoogleFonts.poppins(
                                              color: AppThemeColours
                                                  .secondaryColour,
                                              fontWeight: FontWeight.w500,
                                              shadows: [
                                                Shadow(
                                                    offset:
                                                        const Offset(1.0, 2.0),
                                                    blurRadius: 21.0,
                                                    color: AppThemeColours
                                                        .shadowColour)
                                              ],
                                              fontSize: 14.0))
                                    ]),

                                //! SPACER
                                const SizedBox(height: 20.0),

                                //! ACTIONS
                                Column(
                                    children: _userOptions
                                        .map((item) => InkWell(
                                            onTap: () => _scrollToIndex(
                                                _userOptions.indexOf(item)),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: _selectedView ==
                                                          _userOptions
                                                              .indexOf(item)
                                                      ? AppThemeColours
                                                          .primaryColour
                                                      : Colors.transparent,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0)),
                                              margin:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 5.0),
                                              child: ListTile(
                                                  //! ICON
                                                  leading: Icon(_userOptionsIcons.elementAt(_userOptions.indexOf(item)),
                                                      size: 14.0,
                                                      color: _selectedView ==
                                                              _userOptions
                                                                  .indexOf(item)
                                                          ? AppThemeColours
                                                              .tertiaryColour
                                                          : AppThemeColours
                                                              .secondaryColour),

                                                  //! TEXT
                                                  title: Text(item,
                                                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                                          color: _selectedView == _userOptions.indexOf(item)
                                                              ? AppThemeColours
                                                                  .tertiaryColour
                                                              : AppThemeColours
                                                                  .secondaryColour,
                                                          fontSize: _selectedView ==
                                                                  _userOptions
                                                                      .indexOf(item)
                                                              ? 12
                                                              : 11))),
                                            )))
                                        .toList())
                              ])))),

                  //! DIVIDER
                  Padding(
                      padding: AppScreenUtils.containerPaddingSmall,
                      child: VerticalDivider(
                          thickness: 2.0,
                          color: AppThemeColours.secondaryColour)),

                  //! PAGE VIEW
                  Expanded(
                      flex: 3,
                      child: PageView(
                          controller: controller,
                          physics: const NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          onPageChanged: (value) =>
                              setState(() => _selectedView = value),
                          children: const [
                            //! DASHBOARD
                            AdminDashboard(),

                            //! EDIT PATIENT DATA
                            AdminEditPatientDetails(),

                            //! EDIT
                            AdminEditDetails()
                          ]))
                ])));
  }

  void _scrollToIndex(int index) {
    controller.animateToPage(index,
        duration: const Duration(seconds: 1),
        curve: Curves.fastLinearToSlowEaseIn);
  }
}
