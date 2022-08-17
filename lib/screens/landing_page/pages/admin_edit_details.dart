import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inoculate/theme/theme.dart';
import 'package:inoculate/utils/app_screen_utils.dart';

class AdminEditDetails extends StatelessWidget {
  const AdminEditDetails({Key? key}) : super(key: key);
  static final DateTime now = DateTime.now();
  static final TextStyle _editBioDetailsTextStyle = GoogleFonts.poppins(
      fontWeight: FontWeight.w400,
      fontSize: 14.0,
      color: AppThemeColours.secondaryColour);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: AppScreenUtils.containerPaddingSmall,
            child: LayoutBuilder(
                builder: (context, constraints) => Column(children: [
                      //! HEADER
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

                      //! SPACER
                      const SizedBox(height: 20.0),

                      //! HEADER NOTICE
                      Text("Edit Personal Details.",
                          style: _editBioDetailsTextStyle),

                      //! SPACER
                      const SizedBox(height: 20.0),

                      //! EDIT YOUR DETAILS LIKE EMAIL, PASSWORD, HOME ADDRESS, CONTACT
                      Container(
                          height: constraints.maxHeight * 0.6,
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
                                const SizedBox(height: 20.0),

                                //! FULL NAME
                                TextFormField(
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                    decoration: const InputDecoration(
                                        labelText: "Full name",
                                        hintText: "Last name, First name")),

                                //! SPACER
                                const SizedBox(height: 20.0),

                                //! EMAIL
                                TextFormField(
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                    decoration: const InputDecoration(
                                        labelText: "Email",
                                        hintText: "you@you.com")),

                                //! SPACER
                                const SizedBox(height: 20.0),

                                //! PASSWORD
                                TextFormField(
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                    decoration: const InputDecoration(
                                        labelText: "Password",
                                        hintText: "*******")),

                                //! SPACER
                                const SizedBox(height: 20.0),

                                //! CONTACT
                                TextFormField(
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                    decoration: const InputDecoration(
                                        labelText: "Contact Number",
                                        hintText: "+2348012345678")),

                                //! SPACER
                                const SizedBox(height: 20.0),

                                //! ADDRESS
                                TextFormField(
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                    decoration: const InputDecoration(
                                        labelText: "Address",
                                        hintText: "Your home address")),
                              ])))),

                      //! SPACER
                      const SizedBox(height: 20.0),

                      //! SAVE BUTTON
                      SizedBox(
                          width: constraints.maxWidth * 0.5,
                          child: ElevatedButton(
                              onPressed: () {}, child: const Text("Save"))),
                    ]))));
  }
}
