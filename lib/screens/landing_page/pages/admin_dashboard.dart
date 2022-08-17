import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:inoculate/theme/theme.dart';
import 'package:inoculate/utils/app_screen_utils.dart';

class AdminDashboard extends StatefulWidget {
  const AdminDashboard({Key? key}) : super(key: key);

  @override
  State<AdminDashboard> createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {
  static final DateTime now = DateTime.now();
  static bool _isVisible = false;
  static bool _isVisible2 = false;
  static bool _isSampleConfirmed = false;
  static bool _isSampleConfirmed2 = false;

  startTime() {
    Timer.periodic(const Duration(milliseconds: 500), (Timer timer) {
      if (timer.tick == 4) {
        setState(() {
          _isVisible = false;
          _isSampleConfirmed = true;
        });
      }
    });
  }

  startTime2() {
    Future.delayed(const Duration(milliseconds: 1800)).then((value) {
      setState(() {
        _isSampleConfirmed2 = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: AppThemeColours.secondaryColour,
          content: Text("Vaccine Administered and Test Result Sent.",
              style: Theme.of(context).textTheme.bodyText2)));
    });
  }

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

                      //!
                      RichText(
                          text: TextSpan(children: [
                        //! GREETING
                        TextSpan(
                            text: "Welcome,",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .copyWith(
                                    color: AppThemeColours.secondaryColour)),

                        //! USER NAME
                        TextSpan(
                            text: " Dr. Serticode! 👋",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(
                                    color: AppThemeColours.secondaryColour)),
                      ])),

                      //! SPACER
                      const SizedBox(height: 10.0),

                      //! MEETING
                      Container(
                          height: constraints.maxHeight * 0.1,
                          width: double.infinity,
                          padding: AppScreenUtils.containerPaddingSmall,
                          decoration: BoxDecoration(
                              color: AppThemeColours.secondaryColour,
                              borderRadius: BorderRadius.circular(21.0)),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                //! ICON
                                Icon(Icons.event_note_outlined,
                                    size: 18.0,
                                    color: AppThemeColours.tertiaryColour),

                                //! SPACER
                                const SizedBox(width: 10.0),

                                const Text(
                                    "Enter details of patient to be tested"),
                              ])),

                      //! SPACER
                      const SizedBox(height: 10.0),

                      //! REPORT
                      Expanded(
                          child: Container(
                              padding: AppScreenUtils.containerPaddingSmall,
                              decoration: BoxDecoration(
                                  color: AppThemeColours.tertiaryColour,
                                  borderRadius: BorderRadius.circular(21.0)),
                              child: Form(
                                  child: SingleChildScrollView(
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                    //! SPACER
                                    const SizedBox(height: 10.0),

                                    //! FULL NAME
                                    TextFormField(
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2,
                                        decoration: const InputDecoration(
                                            labelText: "Full name",
                                            hintText: "Last name, First name")),

                                    //! SPACER
                                    const SizedBox(height: 10.0),

                                    //! EMAIL
                                    TextFormField(
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2,
                                        decoration: const InputDecoration(
                                            labelText: "Blood Group",
                                            hintText: "O+")),

                                    //! SPACER
                                    const SizedBox(height: 10.0),

                                    //! PASSWORD
                                    TextFormField(
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2,
                                        decoration: const InputDecoration(
                                            labelText: "Genotype",
                                            hintText: "AS")),

                                    //! SPACER
                                    const SizedBox(height: 10.0),

                                    //! PASSWORD
                                    TextFormField(
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2,
                                        decoration: const InputDecoration(
                                            labelText: "Test Sample",
                                            hintText:
                                                "Nasal Swab, Blood, Urine")),

                                    //! SPACER
                                    const SizedBox(height: 20.0),

                                    //! CIRCULAR PROGRESS INDICATOR
                                    Visibility(
                                        visible: _isVisible,
                                        child: CircularProgressIndicator(
                                            color: AppThemeColours
                                                .secondaryColour)),

                                    //! CIRCULAR PROGRESS INDICATOR
                                    Visibility(
                                        visible: _isSampleConfirmed,
                                        child: Text(
                                            "Covid detected! \nPatient viral load is: ${((calculateViralLoad() * 20) * 100).toStringAsFixed(2)} \nPatient to be administered ${calculateViralLoad()}mg of Vaccine.",
                                            textAlign: TextAlign.center,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText2!
                                                .copyWith(
                                                    color: AppThemeColours
                                                        .secondaryColour))),

                                    Visibility(
                                        visible: _isSampleConfirmed2,
                                        child: Column(
                                          children: [
                                            Visibility(
                                                visible: _isVisible2,
                                                child:
                                                    CircularProgressIndicator(
                                                        color: AppThemeColours
                                                            .secondaryColour)),

                                            //! SPACER
                                            const SizedBox(height: 20.0),

                                            Text("Administering ...",
                                                textAlign: TextAlign.center,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText2!
                                                    .copyWith(
                                                        color: AppThemeColours
                                                            .secondaryColour))
                                          ],
                                        ))
                                  ]))))),

                      //! SPACER
                      const SizedBox(height: 10.0),

                      //! BUTTON - DOWNLOAD REPORT
                      ElevatedButton(
                          onPressed: () {
                            if (_isSampleConfirmed) {
                              setState(() {
                                _isSampleConfirmed2 = true;
                                _isVisible2 = true;
                              });

                              startTime2();

                              setState(() => _isSampleConfirmed = false);
                            } else {
                              setState(() {
                                _isVisible = true;
                                if (_isVisible) {
                                  startTime();
                                } else {
                                  calculateViralLoad();
                                }
                              });
                            }
                          },
                          child: Text(_isSampleConfirmed
                              ? "Administer Vaccine & Submit result to user."
                              : "Confirm and Test Sample"))
                    ]))));
  }

  double calculateViralLoad() {
    double viralLoad = Random().nextDouble() * 100;
    return double.parse((viralLoad / 20).toStringAsFixed(2));
  }
}
