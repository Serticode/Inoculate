import 'package:flutter/material.dart';
import 'package:inoculate/screens/landing_page/pages/admin_wrapper.dart';
import 'package:inoculate/theme/theme.dart';

class AdminLogin extends StatelessWidget {
  final BoxConstraints theParentConstraints;
  const AdminLogin({Key? key, required this.theParentConstraints})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("AdminLogin",
          style:
              Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 18.0)),

      //! SPACER
      const SizedBox(height: 20.0),

      //! NOTICE
      const Text("Login and attend to clients"),

      //! SPACER
      const SizedBox(height: 20.0),

      //! BODY
      Form(
          child: SingleChildScrollView(
              child: Column(children: [
        //! EMAIL
        TextFormField(
            style: Theme.of(context).textTheme.bodyText2,
            decoration: const InputDecoration(
                labelText: "Email", hintText: "you@you.com")),

        //! SPACER
        const SizedBox(height: 20.0),

        //! PASSWORD
        TextFormField(
          style: Theme.of(context).textTheme.bodyText2,
          decoration:
              const InputDecoration(labelText: "Password", hintText: "******"),
        )
      ]))),

      //! SPACER
      const SizedBox(height: 20.0),

      //! ADMIN Login BUTTON
      SizedBox(
          width: theParentConstraints.maxWidth * 0.5,
          child: ElevatedButton(
              onPressed: () => showDashboardDialogue(
                  context: context, screenSize: MediaQuery.of(context).size),
              child: const Text("Login"))),
    ]);
  }

  showDashboardDialogue(
      {required BuildContext context, required Size screenSize}) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => Dialog(
            elevation: 12.0,
            child: Container(
                height: screenSize.height * 0.85,
                width: screenSize.width * 0.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(21.0),
                    border: Border.all(
                        color: AppThemeColours.tertiaryColour.withOpacity(0.5),
                        width: 3)),
                child: const AdminLayoutWrapper())));
  }
}
