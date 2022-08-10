import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inoculate/theme/theme.dart';
import 'package:inoculate/utils/app_screen_utils.dart';

class PageThree extends StatelessWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: AppScreenUtils.appUIDefaultPadding,
            child: Column(children: [
              //! SPACER
              const SizedBox(height: 40.0),

              //! HEADER
              Expanded(
                  flex: 4,
                  child: Column(children: [
                    //! HEADER
                    Expanded(
                        child: LayoutBuilder(
                            builder: (context, constraints) => Stack(children: [
                                  //! TOP
                                  Align(
                                      alignment: Alignment.topLeft,
                                      child: Container(
                                          height: constraints.maxHeight * 0.9,
                                          width: constraints.maxWidth * 0.48,
                                          padding: AppScreenUtils
                                              .containerPaddingSmall,
                                          decoration: BoxDecoration(
                                              color: AppThemeColours
                                                  .primaryColour,
                                              borderRadius:
                                                  const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(21.0),
                                                      topRight:
                                                          Radius.circular(21.0),
                                                      bottomLeft:
                                                          Radius.circular(
                                                              21.0))),
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                //! HEADER
                                                Text("Chronic disease",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyText1!
                                                        .copyWith(
                                                            fontSize: 24.0)),

                                                //! SPACER
                                                const SizedBox(height: 10.0),

                                                //! MID
                                                const Text(
                                                    "Proper vaccine administration is critical to ensure that vaccination is safe and effective."),

                                                //! SPACER
                                                const SizedBox(height: 10.0),

                                                //! BUTTON
                                                SizedBox(
                                                    width:
                                                        (constraints.maxWidth *
                                                                0.46) /
                                                            2.5,
                                                    child: ElevatedButton(
                                                        onPressed: () {},
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                                primary:
                                                                    AppThemeColours
                                                                        .secondaryColour),
                                                        child: Row(
                                                            children: const [
                                                              //! BUTTON TEXT
                                                              Text("Read more"),

                                                              //! SPACER
                                                              SizedBox(
                                                                  width: 10.0),

                                                              //! ICON
                                                              Icon(
                                                                  Icons
                                                                      .arrow_forward_ios,
                                                                  size: 14.0,
                                                                  color: Colors
                                                                      .white)
                                                            ]))),

                                                //! NUMBER
                                                Align(
                                                    alignment:
                                                        Alignment.bottomRight,
                                                    child: Container(
                                                        height: 50.0,
                                                        width: 50.0,
                                                        padding:
                                                            const EdgeInsets.all(
                                                                8.0),
                                                        decoration: BoxDecoration(
                                                            color: Colors.white
                                                                .withOpacity(
                                                                    0.2),
                                                            border: Border.all(
                                                                color: Colors
                                                                    .white
                                                                    .withOpacity(
                                                                        0.8),
                                                                width: 2.0),
                                                            borderRadius:
                                                                const BorderRadius.only(
                                                                    topLeft:
                                                                        Radius.circular(21.0))),
                                                        child: Text("3", textAlign: TextAlign.center, style: Theme.of(context).textTheme.bodyText1)))
                                              ]))),

                                  //! BOTTOM
                                  Align(
                                      alignment: Alignment.bottomRight,
                                      child: Material(
                                        elevation: 45.0,
                                        shadowColor:
                                            AppThemeColours.shadowColour,
                                        borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(21.0),
                                            topRight: Radius.circular(21.0),
                                            bottomLeft: Radius.circular(21.0)),
                                        child: Container(
                                            height: constraints.maxHeight * 0.9,
                                            width: constraints.maxWidth * 0.48,
                                            padding: AppScreenUtils
                                                .containerPaddingSmall,
                                            decoration: BoxDecoration(
                                                color: AppThemeColours
                                                    .tertiaryColour,
                                                borderRadius: const BorderRadius
                                                        .only(
                                                    topLeft:
                                                        Radius.circular(21.0),
                                                    topRight:
                                                        Radius.circular(21.0),
                                                    bottomLeft:
                                                        Radius.circular(21.0))),
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  //! HEADER
                                                  Text("Medicine problem",
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyText1!
                                                          .copyWith(
                                                              fontSize: 24.0,
                                                              color: AppThemeColours
                                                                  .secondaryColour)),

                                                  //! SPACER
                                                  const SizedBox(height: 20.0),

                                                  //! MID
                                                  Text(
                                                      "Proper vaccine administration is critical to ensure that vaccination is safe and effective.",
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyText2!
                                                          .copyWith(
                                                              color: Colors.grey
                                                                  .shade600)),

                                                  //! SPACER
                                                  const SizedBox(height: 20.0),

                                                  //! BUTTON
                                                  SizedBox(
                                                      width: (constraints
                                                                  .maxWidth *
                                                              0.46) /
                                                          2.5,
                                                      child: ElevatedButton(
                                                          onPressed: () {},
                                                          style: ElevatedButton.styleFrom(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .symmetric(
                                                                      vertical:
                                                                          21.0),
                                                              elevation: 0.0,
                                                              primary:
                                                                  AppThemeColours
                                                                      .tertiaryColour),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                //! BUTTON TEXT
                                                                Text(
                                                                    "Read more",
                                                                    style: Theme.of(
                                                                            context)
                                                                        .textTheme
                                                                        .bodyText2!
                                                                        .copyWith(
                                                                            color:
                                                                                AppThemeColours.secondaryColour)),

                                                                //! SPACER
                                                                const SizedBox(
                                                                    width:
                                                                        10.0),

                                                                //! ICON
                                                                Icon(
                                                                    Icons
                                                                        .arrow_forward_ios,
                                                                    size: 14.0,
                                                                    color: AppThemeColours
                                                                        .secondaryColour)
                                                              ]))),

                                                  //! NUMBER
                                                  Align(
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      child: Container(
                                                          height: 50.0,
                                                          width: 50.0,
                                                          padding: const EdgeInsets.all(
                                                              8.0),
                                                          decoration: BoxDecoration(
                                                              color: AppThemeColours
                                                                  .primaryColour
                                                                  .withOpacity(
                                                                      0.2),
                                                              border: Border.all(
                                                                  color: AppThemeColours
                                                                      .secondaryColour,
                                                                  width: 2.0),
                                                              borderRadius: const BorderRadius.only(
                                                                  topLeft: Radius.circular(
                                                                      21.0))),
                                                          child: Text("4",
                                                              textAlign: TextAlign.center,
                                                              style: Theme.of(context).textTheme.bodyText1!.copyWith(color: AppThemeColours.secondaryColour))))
                                                ])),
                                      ))
                                ])))
                  ])),

              Expanded(
                  flex: 6,
                  child: Container(
                      padding: AppScreenUtils.containerPaddingSmall,
                      child: Row(children: [
                        //! LEFT
                        Expanded(
                            flex: 2,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Vaccine type",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .copyWith(
                                              fontSize: 16.0,
                                              color: AppThemeColours
                                                  .primaryColour)),

                                  //! SPACER
                                  const SizedBox(height: 20.0),

                                  //! ANSWER
                                  Text("Vaccine Type",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 28.0,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary)),

                                  //! SPACER
                                  const SizedBox(height: 20.0),

                                  //! ANSWER
                                  Text(
                                      "Before getting vaccinated, it is better to know your\nown vaccine and advantages by using it",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2!
                                          .copyWith(
                                              color: Colors.grey.shade600))
                                ])),

                        //! RIGHT
                        Expanded(
                            flex: 4,
                            child: LayoutBuilder(
                                builder: (context, constraints) => Container(
                                    height: constraints.maxHeight * 0.8,
                                    padding:
                                        AppScreenUtils.containerPaddingSmall,
                                    child: Stack(children: [
                                      //! BOTTOM
                                      Positioned(
                                          bottom: 1.0,
                                          left: constraints.maxWidth * 0.01,
                                          child: SizedBox(
                                              width: 120.0,
                                              child: LinearProgressIndicator(
                                                  value: 0.4,
                                                  backgroundColor:
                                                      AppThemeColours
                                                          .primaryColour,
                                                  color: AppThemeColours
                                                      .secondaryColour))),

                                      //! TOP
                                      Align(
                                          alignment: Alignment.topLeft,
                                          child: Material(
                                            shadowColor:
                                                AppThemeColours.shadowColour,
                                            elevation: 42.0,
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            child: Container(
                                                padding: AppScreenUtils
                                                    .containerPaddingSmall,
                                                width:
                                                    constraints.maxWidth * 0.45,
                                                height:
                                                    constraints.maxHeight * 0.6,
                                                /* margin: const EdgeInsets.only(
                                                    bottom: 5.0), */
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                    color: AppThemeColours
                                                        .primaryColour),
                                                child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      //! ICON AND TEXT
                                                      Row(children: [
                                                        //! EMOJI
                                                        Container(
                                                            height: 45,
                                                            width: 45,
                                                            decoration: BoxDecoration(
                                                                color: AppThemeColours
                                                                    .tertiaryColour
                                                                    .withOpacity(
                                                                        0.2),
                                                                border: Border.all(
                                                                    width: 2.0,
                                                                    color: Colors
                                                                        .white
                                                                        .withOpacity(
                                                                            0.8)),
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                        8.0)),
                                                            child: Transform.scale(
                                                                scale: 1.8,
                                                                child: const Center(
                                                                    child:
                                                                        Text("🧫", textAlign: TextAlign.center)))),

                                                        //! SPACER
                                                        const SizedBox(
                                                            width: 20),

                                                        //! ITEM NAME
                                                        Text("SnoVac",
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .bodyText2!
                                                                .copyWith(
                                                                    color: AppThemeColours
                                                                        .tertiaryColour))
                                                      ]),

                                                      //! TEXT
                                                      Text(
                                                          "Proper vaccine administration is critical to ensure that vaccination is safe and effective.",
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .bodyText2),

                                                      //! BUTTON
                                                      SizedBox(
                                                          width: (constraints
                                                                      .maxWidth *
                                                                  0.45) /
                                                              1.2,
                                                          child: ElevatedButton(
                                                              onPressed: () {},
                                                              style: ElevatedButton
                                                                  .styleFrom(
                                                                      primary:
                                                                          AppThemeColours
                                                                              .secondaryColour),
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    //! BUTTON TEXT
                                                                    Text(
                                                                        "More information",
                                                                        style: Theme.of(context)
                                                                            .textTheme
                                                                            .bodyText2!
                                                                            .copyWith(color: AppThemeColours.tertiaryColour)),

                                                                    //! SPACER
                                                                    const SizedBox(
                                                                        width:
                                                                            10.0),

                                                                    //! ICON
                                                                    Icon(
                                                                        Icons
                                                                            .arrow_forward_ios,
                                                                        size:
                                                                            14.0,
                                                                        color: AppThemeColours
                                                                            .tertiaryColour)
                                                                  ])))
                                                    ])),
                                          )),

                                      //! BOTTOM
                                      Align(
                                          alignment: Alignment.bottomRight,
                                          child: Container(
                                              padding: AppScreenUtils
                                                  .containerPaddingSmall,
                                              width:
                                                  constraints.maxWidth * 0.45,
                                              height:
                                                  constraints.maxHeight * 0.6,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                  color: AppThemeColours
                                                      .tertiaryColour),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    //! ICON AND TEXT
                                                    Row(children: [
                                                      //! EMOJI
                                                      Container(
                                                          height: 45,
                                                          width: 45,
                                                          decoration: BoxDecoration(
                                                              color: AppThemeColours
                                                                  .textColourSecondary,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0)),
                                                          child: Transform.scale(
                                                              scale: 1.8,
                                                              child: const Center(
                                                                  child: Text(
                                                                      "🧫",
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center)))),

                                                      //! SPACER
                                                      const SizedBox(width: 20),

                                                      //! ITEM NAME
                                                      Text("AstraZeneca",
                                                          style: Theme.of(
                                                                  context)
                                                              .textTheme
                                                              .bodyText2!
                                                              .copyWith(
                                                                  color: AppThemeColours
                                                                      .secondaryColour))
                                                    ]),

                                                    //! TEXT
                                                    Text(
                                                        "Proper vaccine administration is critical to ensure that vaccination is safe and effective.",
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodyText2!
                                                            .copyWith(
                                                                color: Colors
                                                                    .grey
                                                                    .shade600)),
                                                    //! BUTTON
                                                    ElevatedButton(
                                                        onPressed: () {},
                                                        style: ElevatedButton.styleFrom(
                                                            padding:
                                                                const EdgeInsets
                                                                        .symmetric(
                                                                    vertical:
                                                                        21.0),
                                                            elevation: 0.0,
                                                            primary: AppThemeColours
                                                                .tertiaryColour),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              //! BUTTON TEXT
                                                              Text(
                                                                  "More information",
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .bodyText2!
                                                                      .copyWith(
                                                                          color:
                                                                              AppThemeColours.secondaryColour)),

                                                              //! SPACER
                                                              const SizedBox(
                                                                  width: 10.0),

                                                              //! ICON
                                                              Icon(
                                                                  Icons
                                                                      .arrow_forward_ios,
                                                                  size: 14.0,
                                                                  color: AppThemeColours
                                                                      .secondaryColour)
                                                            ]))
                                                  ])))
                                    ]))))
                      ]))),

              const Expanded(flex: 2, child: SizedBox())
            ])));
  }
}
