import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:inoculate/theme/theme.dart';
import 'package:inoculate/utils/app_screen_utils.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  final List<double> stops = const [
    0.0,
    (100 - 35) / 100,
    (100 - 35) / 100,
    1.0
  ];

  static const List<String> _vaccineNames = [
    "Sinovac",
    "AstraZeneca",
    "Moderna",
    "Pfizer"
  ];

  static const List<String> _numberOfPatients = ["512k", "256k"];
  static const List<String> _typeOfDose = [
    "Full doses patient",
    "First dose patient"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: LayoutBuilder(
            builder: (context, constraints) => Container(
                height: constraints.maxHeight,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                      AppThemeColours.primaryColour,
                      AppThemeColours.primaryColour,
                      AppThemeColours.secondaryColour,
                      AppThemeColours.secondaryColour
                    ],
                        stops: stops,
                        end: Alignment.bottomCenter,
                        begin: Alignment.topCenter)),
                child: Container(
                    height: constraints.maxHeight * 0.60,
                    padding: AppScreenUtils.appUIDefaultPadding,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                          AppThemeColours.tertiaryColour.withOpacity(0.15),
                          Colors.transparent
                        ])),
                    child: Stack(children: [
                      //! BOTTOM
                      Align(
                          alignment: Alignment.bottomLeft,
                          child: SizedBox(
                              height: constraints.maxHeight * 0.34,
                              width: constraints.maxWidth * 0.2,
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: _numberOfPatients
                                      .map((noOfPatients) => Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Row(children: [
                                                  Text(noOfPatients,
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .headline2!
                                                          .copyWith(
                                                              color: AppThemeColours
                                                                  .tertiaryColour)),
                                                  Text("+",
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .headline2!
                                                          .copyWith(
                                                              color: AppThemeColours
                                                                  .elevatedButtonBackgroundColour))
                                                ]),

                                                //! SPACER
                                                const SizedBox(height: 5.0),

                                                Text(_typeOfDose.elementAt(
                                                    _numberOfPatients
                                                        .indexOf(noOfPatients)))
                                              ]))
                                      .toList()))),

                      //! TEXT
                      Align(
                          alignment: Alignment.topLeft,
                          child: SizedBox(
                              height: constraints.maxHeight * 0.65,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    //! HEADER
                                    Text(
                                        "Your Professional \nVaccination Platform",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline2),

                                    //! SPACER
                                    const SizedBox(height: 10.0),

                                    //! BODY TEXT
                                    Text(
                                        "Get you and your family safe from Corona Virus \nby getting Vaccinated with us.",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1),

                                    //! SPACER
                                    const SizedBox(height: 20.0),

                                    //! BUTTON
                                    ElevatedButton(
                                        onPressed: () {},
                                        child: const Text("Get a slot now!"))
                                  ]))),

                      //! MIDDLE
                      Positioned(
                          right: 1.0,
                          child: Container(
                              height: constraints.maxHeight * 0.8,
                              width: constraints.maxWidth * 0.3,
                              margin: EdgeInsets.only(
                                  top: constraints.maxHeight * 0.05),
                              padding: AppScreenUtils.headerPadding,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1.0,
                                      color: AppThemeColours.tertiaryColour),
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        AppThemeColours.tertiaryColour
                                            .withOpacity(0.5),
                                        Colors.transparent
                                      ]),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(
                                          constraints.maxHeight * 0.4),
                                      topRight: Radius.circular(
                                          constraints.maxHeight * 0.4))),
                              alignment: Alignment.centerRight,
                              child: Transform.scale(
                                  scale: 5.5,
                                  child: const Image(
                                      filterQuality: FilterQuality.high,
                                      image:
                                          AssetImage("assets/strong_woman.png"))))),

                      //! SHIELD
                      Positioned(
                          right: 300,
                          top: 120,
                          child: Container(
                              width: 120,
                              height: 130,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 18.0, horizontal: 21.0),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 3.0,
                                      color: AppThemeColours.tertiaryColour),
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        AppThemeColours.tertiaryColour
                                            .withOpacity(0.5),
                                        Colors.transparent
                                      ]),
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(
                                          constraints.maxHeight * 1.5),
                                      bottomRight: Radius.circular(
                                          constraints.maxHeight * 1.5))),
                              child: Material(
                                  elevation: 12.0,
                                  shadowColor: AppThemeColours.shadowColour,
                                  shape: const CircleBorder(),
                                  child: CircleAvatar(
                                      radius: 10.0,
                                      backgroundColor:
                                          AppThemeColours.elevatedButtonBackgroundColour,
                                      child: Icon(Icons.shield, size: 36.0, color: AppThemeColours.tertiaryColour))))),

                      //! VACCINES
                      Positioned(
                          right: 450,
                          bottom: 300,
                          child: Container(
                              width: 200,
                              height: 250,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        AppThemeColours.secondaryColour
                                            .withOpacity(0.8),
                                        AppThemeColours.secondaryColour
                                            .withOpacity(0.2)
                                      ]),
                                  border: Border.all(
                                      width: 0.5,
                                      color: AppThemeColours.tertiaryColour),
                                  borderRadius: BorderRadius.circular(12.0)),
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: _vaccineNames
                                      .map((brand) => brand
                                              .toLowerCase()
                                              .contains("astra")
                                          ? Transform.scale(
                                              scale: 1.2,
                                              child: Container(
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                      color: AppThemeColours
                                                          .elevatedButtonBackgroundColour),
                                                  padding: AppScreenUtils
                                                      .containerPaddingSmall,
                                                  width: 300,
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(brand),
                                                        Icon(
                                                            Icons
                                                                .arrow_forward_ios,
                                                            size: 16.0,
                                                            color: AppThemeColours
                                                                .tertiaryColour)
                                                      ])))
                                          : Text(brand,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText2))
                                      .toList()))),

                      //! INCREASING IMMUNITY
                      Positioned(
                          right: 1,
                          bottom: 300,
                          child: Container(
                              padding: AppScreenUtils.containerPaddingSmall,
                              decoration: BoxDecoration(
                                  color: AppThemeColours.tertiaryColour
                                      .withOpacity(0.8),
                                  border: Border.all(
                                      width: 1.5,
                                      color: AppThemeColours.tertiaryColour
                                          .withOpacity(0.2)),
                                  borderRadius: BorderRadius.circular(12.0)),
                              child: Row(children: [
                                //! EMOJI
                                Container(
                                    height: 50,
                                    width: 50,
                                    padding: const EdgeInsets.all(2.0),
                                    decoration: BoxDecoration(
                                        color: AppThemeColours
                                            .elevatedButtonBackgroundColour,
                                        border: Border.all(
                                            color:
                                                Colors.white.withOpacity(0.8),
                                            width: 2.0),
                                        borderRadius:
                                            BorderRadius.circular(8.0)),
                                    child: Center(
                                        child: Icon(Icons.check_box_rounded,
                                            size: 28,
                                            color: AppThemeColours
                                                .tertiaryColour))),

                                //! SPACER
                                const SizedBox(width: 20),

                                //! ITEM NAME
                                Text("Increasing Immunity",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(
                                            color: AppThemeColours
                                                .secondaryColour))
                              ])))
                    ])))));
  }
}
