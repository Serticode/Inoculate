import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inoculate/theme/theme.dart';
import 'package:inoculate/utils/app_screen_utils.dart';

class UserDashboard extends StatelessWidget {
  const UserDashboard({Key? key}) : super(key: key);
  static final DateTime now = DateTime.now();
  static final TextStyle _resultTextStyle = GoogleFonts.poppins(
      fontWeight: FontWeight.w500,
      fontSize: 12.0,
      color: AppThemeColours.secondaryColour);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: AppScreenUtils.containerPaddingSmall,
            child: LayoutBuilder(
                builder: (context, constraints) => Column(children: [
                      //! CANCEL, DATE & TIME
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                        //! CANCEL BUTTON
                        InkWell(
                            onTap: () => Navigator.of(context).pop(),
                            child: Row(children: [
                              CircleAvatar(
                                  radius: 12.0,
                                  backgroundColor:
                                      AppThemeColours.secondaryColour,
                                  child: CircleAvatar(
                                      radius: 10.0,
                                      backgroundColor:
                                          AppThemeColours.tertiaryColour,
                                      child: Icon(Icons.close,
                                          size: 10.0,
                                          color: AppThemeColours
                                              .secondaryColour))),

                              //! SPACER
                              const SizedBox(width: 10.0),

                              //! CLOSE TEXT
                              Text("Close page",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2!
                                      .copyWith(
                                          color:
                                              AppThemeColours.secondaryColour))
                            ])),

                        //! SPACER
                        const Spacer(),

                        //! ICON
                        Icon(Icons.event_note_outlined,
                            size: 18.0, color: AppThemeColours.secondaryColour),

                        //! SPACER
                        const SizedBox(width: 10.0),

                        //! DATE
                        Text(" ${now.day}/${now.month}/${now.year}.",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .copyWith(
                                    color: AppThemeColours.secondaryColour))
                      ]),

                      //! GREETING & USER NAME
                      RichText(
                          text: TextSpan(children: [
                        //! GREETING
                        TextSpan(
                            text: "Welcome, ",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .copyWith(
                                    color: AppThemeColours.secondaryColour)),

                        //! USER NAME
                        TextSpan(
                            text: " Adonis, Green O.! 👋",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(
                                    color: AppThemeColours.secondaryColour)),
                      ])),

                      //! SPACER
                      const SizedBox(height: 20.0),

                      //! MEETING
                      Container(
                          height: constraints.maxHeight * 0.1,
                          width: double.infinity,
                          padding: AppScreenUtils.containerPaddingSmall,
                          decoration: BoxDecoration(
                              color: AppThemeColours.secondaryColour,
                              borderRadius: BorderRadius.circular(21.0)),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                //! ICON
                                Icon(Icons.event_note_outlined,
                                    size: 18.0,
                                    color: AppThemeColours.tertiaryColour),

                                //! SPACER
                                const SizedBox(width: 10.0),

                                const Text("You do not have any reservations"),

                                //! SPACER
                                const SizedBox(width: 10.0),

                                ElevatedButton(
                                    onPressed: () {},
                                    child: Text("Make a reservation",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2!
                                            .copyWith(
                                                color: AppThemeColours
                                                    .tertiaryColour)))
                              ])),

                      //! SPACER
                      const SizedBox(height: 20.0),

                      //! REPORT
                      Expanded(
                          child: Container(
                              padding: AppScreenUtils.containerPaddingSmall,
                              decoration: BoxDecoration(
                                  color: AppThemeColours.tertiaryColour,
                                  borderRadius: BorderRadius.circular(21.0)),
                              child: Column(children: [
                                //! HEADER
                                Text("Bio Data",
                                    style: _resultTextStyle.copyWith(
                                        fontSize: 16.0)),

                                //! SPACER
                                const SizedBox(height: 10.0),

                                //! USER BIO
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      //! AGE
                                      Text("Age: 19 years old.",
                                          style: _resultTextStyle),

                                      //! BLOOD GROUP
                                      Text("Blood Group: O+",
                                          style: _resultTextStyle),

                                      //! GENOTYPE
                                      Text("Genotype: AS.",
                                          style: _resultTextStyle)
                                    ]),

                                //! SPACER
                                const SizedBox(height: 30.0),

                                //! HEADER
                                Text("Test Details",
                                    style: _resultTextStyle.copyWith(
                                        fontSize: 16.0)),

                                //! SPACER
                                const SizedBox(height: 10.0),

                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      //! SAMPLE TYPE
                                      Text("Sample type: Nasal Swab.",
                                          style: _resultTextStyle),

                                      //! SPACER
                                      const SizedBox(height: 10.0),

                                      //! VIRUS SORT FOR
                                      Text(
                                          "Virus tested for: Coronavirus 2 (SARS-CoV-2)",
                                          style: _resultTextStyle)
                                    ]),

                                //! SPACER
                                const SizedBox(height: 30.0),

                                //! NEGATIVE OR POSITIVE CIRCLE
                                CircleAvatar(
                                    radius: 65.0,
                                    backgroundColor:
                                        AppThemeColours.secondaryColour,
                                    child: CircleAvatar(
                                        radius: 60.0,
                                        backgroundColor:
                                            AppThemeColours.tertiaryColour,
                                        backgroundImage: const AssetImage(
                                            "assets/user.jpg"))),

                                //! SPACER
                                const SizedBox(height: 10.0),

                                //! RESULT OF TEST / VACCINE SHOT
                                Text("Test result for Adonis, Green O.!",
                                    style: _resultTextStyle),

                                //! SPACER
                                const SizedBox(height: 10.0),

                                Text(
                                    "Your test showed Positive, with Virus load ${(calculateViralLoad() * 20) * 100}. \nBioNTech, Pfizer vaccine ${calculateViralLoad()}mg was administered.",
                                    style: _resultTextStyle)
                              ]))),

                      //! SPACER
                      const SizedBox(height: 20.0),

                      //! BUTTON - DOWNLOAD REPORT
                      ElevatedButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                backgroundColor:
                                    AppThemeColours.secondaryColour,
                                content: Text("Downloading Report",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(
                                            color: AppThemeColours
                                                .tertiaryColour))));
                          },
                          child: const Text("Download your vaccine report"))
                    ]))));
  }

  double calculateViralLoad() {
    double viralLoad = Random().nextDouble() * 100;
    return double.parse((viralLoad / 20).toStringAsFixed(2));
  }
}
