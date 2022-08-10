import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inoculate/theme/theme.dart';
import 'package:inoculate/utils/app_screen_utils.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  final List<double> stops = const [
    0.0,
    (100 - 35) / 100,
    (100 - 35) / 100,
    1.0
  ];

  static const List<String> _teamMembersNames = [
    "Ogudu, Abraham O.",
    "Akujor, Samuel O.",
    "Osai Juda.",
    "Adedeji, Kasope I.",
    "Ayebaigberi Ayebakuro",
    "Arije, Gbejesuga A.",
    "Ebereonwu, Einstein M.",
    "Ogbomah, Kennedy O."
  ];

  static const List<String> _teamMembersRoles = [
    "Group Leader & Software Requirement Documenter.",
    "Project Manager & Software Developer.",
    "Requirements Engineer.",
    "Sponsor & SDLC Expert",
    "Software Consultant, SDLC & UML Expert.",
    "Risk Analyst.",
    "Gen. Secretary & Requirements Engineer.",
    "Feasibility Study Expert."
  ];

  static const List<AssetImage> _teamPictures = [
    AssetImage("assets/ogudu.JPG"),
    AssetImage("assets/Serticode.jpeg"),
    AssetImage("assets/juda.jpg"),
    AssetImage("assets/kashope.JPG"),
    AssetImage("assets/kuro.heic"),
    AssetImage("assets/gbj.JPG"),
    AssetImage("assets/muna.JPG"),
    AssetImage("assets/ogb.JPG")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: LayoutBuilder(
            builder: (context, constraints) => Container(
                  height: constraints.maxHeight,
                  padding: AppScreenUtils.appUIDefaultPadding,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                        AppThemeColours.backgroundColour,
                        AppThemeColours.backgroundColour,
                        AppThemeColours.secondaryColour,
                        AppThemeColours.secondaryColour
                      ],
                          stops: stops,
                          end: Alignment.bottomCenter,
                          begin: Alignment.topCenter)),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        //! SPACER
                        const SizedBox(height: 10.0),

                        //! MEET THE TEAM.
                        Expanded(
                            child: Column(children: [
                          //! NOTICE
                          Text("Meet the team.",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(
                                      color:
                                          AppThemeColours.textColourSecondary)),

                          //! SPACER
                          const SizedBox(height: 5.0),

                          //! ROLES
                          Text(
                              "Here's our corresponding roles for this project.",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                      fontSize: 24,
                                      color: AppThemeColours.secondaryColour)),

                          //! SPACER
                          const SizedBox(height: 10.0),

                          //! TEAM VIEW
                          Expanded(
                              child: LayoutBuilder(
                                  builder:
                                      (context, constraints) =>
                                          SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Row(
                                                children: _teamMembersNames
                                                    .map((teamMember) =>
                                                        InkWell(
                                                            onTap: () => _launchUrl(
                                                                teamMember: teamMember
                                                                    .toLowerCase()),
                                                            child: Container(
                                                                height: constraints
                                                                        .maxHeight *
                                                                    0.6,
                                                                width: constraints
                                                                        .maxWidth *
                                                                    0.3,
                                                                margin:
                                                                    const EdgeInsets.only(
                                                                        right:
                                                                            12.0),
                                                                padding:
                                                                    AppScreenUtils
                                                                        .containerPaddingSmall,
                                                                decoration: BoxDecoration(
                                                                    color: _teamMembersNames.indexOf(teamMember).isOdd
                                                                        ? AppThemeColours
                                                                            .primaryColour
                                                                        : AppThemeColours
                                                                            .tertiaryColour,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            21.0)),
                                                                child: Column(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      //! PICTURE AND NAME

                                                                      Container(
                                                                          margin: const EdgeInsets.only(
                                                                              right:
                                                                                  24.0),
                                                                          decoration:
                                                                              BoxDecoration(borderRadius: BorderRadius.circular(12.0)),
                                                                          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                                                                            //! EMOJI
                                                                            Container(
                                                                                height: 70,
                                                                                width: 70,
                                                                                decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover, image: _teamPictures.elementAt(_teamMembersNames.indexOf(teamMember))), color: Colors.white.withOpacity(0.2), border: Border.all(color: _teamMembersNames.indexOf(teamMember).isOdd ? Colors.white.withOpacity(0.8) : AppThemeColours.secondaryColour, width: 2.0), borderRadius: BorderRadius.circular(8.0))),

                                                                            //! SPACER
                                                                            const SizedBox(height: 10),

                                                                            //! ITEM NAME
                                                                            Text(teamMember,
                                                                                maxLines: 2,
                                                                                textAlign: TextAlign.center,
                                                                                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                                                                                      fontSize: 18.0,
                                                                                      color: _teamMembersNames.indexOf(teamMember).isOdd ? Colors.white : AppThemeColours.secondaryColour,
                                                                                    ))
                                                                          ])),

                                                                      //! SPACER
                                                                      const SizedBox(
                                                                          height:
                                                                              10.0),

                                                                      //! ROLE
                                                                      Text(
                                                                          _teamMembersRoles.elementAt(_teamMembersNames.indexOf(
                                                                              teamMember)),
                                                                          textAlign: TextAlign
                                                                              .center,
                                                                          style: Theme.of(context)
                                                                              .textTheme
                                                                              .bodyText1!
                                                                              .copyWith(color: AppThemeColours.secondaryColour)),
                                                                    ]))))
                                                    .toList()),
                                          ))),

                          //! SPACER
                          const SizedBox(height: 10.0),

                          //! BUTTONS
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                    radius: 15.0,
                                    backgroundColor:
                                        AppThemeColours.primaryColour,
                                    child: CircleAvatar(
                                        radius: 12.0,
                                        backgroundColor:
                                            AppThemeColours.backgroundColour,
                                        child: Icon(Icons.arrow_back_ios,
                                            size: 14.0,
                                            color: AppThemeColours
                                                .primaryColour))),

                                //! SPACER
                                const SizedBox(width: 50.0),

                                CircleAvatar(
                                    radius: 15.0,
                                    backgroundColor:
                                        AppThemeColours.textColourSecondary,
                                    child: const Icon(Icons.arrow_forward_ios,
                                        size: 14.0, color: Colors.white))
                              ]),

                          //! SPACER
                          const SizedBox(height: 10.0),
                        ])),

                        //! LOGO & NAME
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
                        const SizedBox(height: 10.0),

                        //! NAME
                        Text("Inoculate",
                            style: GoogleFonts.poppins(
                                color: AppThemeColours.tertiaryColour,
                                fontWeight: FontWeight.w500,
                                shadows: [
                                  Shadow(
                                      offset: const Offset(1.0, 2.0),
                                      blurRadius: 21.0,
                                      color: AppThemeColours.shadowColour)
                                ],
                                fontSize: 32.0)),

                        //! SPACER
                        const SizedBox(height: 20.0),

                        //! AboutUs DETAILS AND ACKNOWLEDGEMENT
                        //! NOTICE
                        const Text(
                            "This project was built to fulfil a requirement for the course - Software Requirement Engineering SEng 304."),

                        //! SPACER
                        const SizedBox(height: 5.0),

                        //! COURTESY
                        TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                padding: AppScreenUtils.containerPaddingSmall),
                            child: Text("©️ Serticode.",
                                style: Theme.of(context).textTheme.bodyText2)),

                        //! FOR
                        TextButton(
                            onPressed: null,
                            style: TextButton.styleFrom(
                                padding: AppScreenUtils.containerPaddingSmall),
                            child: Text(
                                "All Rights Reserved.   White Hat Team, BUCC class of 19, Software Engineering GROUP A.",
                                style: Theme.of(context).textTheme.bodyText2)),

                        //! SPACER
                        const SizedBox(height: 5.0),

                        //! YEAR
                        const Text("Aug. 2022"),

                        //! SPACER
                        const SizedBox(height: 10.0),
                      ]),
                )));
  }

  //! LAUNCH URL
  Future<void> _launchUrl({required String teamMember}) async {
    if (teamMember.contains("samuel")) {
      if (!await launchUrl(Uri.parse("https://github.com/Serticode"))) {
        throw "Could not launch Serticode's GitHub Profile";
      }
    } else {}
  }
}
