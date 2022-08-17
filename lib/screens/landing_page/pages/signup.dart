import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  final BoxConstraints theParentConstraints;
  const SignUp({Key? key, required this.theParentConstraints})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text("SignUp",
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(fontSize: 18.0)),

        //! SPACER
        const SizedBox(height: 20.0),

        //! NOTICE
        const Text("Create an account to make reservations and get tested."),

        //! SPACER
        const SizedBox(height: 20.0),

        //! BODY
        Form(
            child: SingleChildScrollView(
                child: Column(children: [
          //! SPACER
          const SizedBox(height: 20.0),

          //! FULL NAME
          TextFormField(
              style: Theme.of(context).textTheme.bodyText2,
              decoration: const InputDecoration(
                  labelText: "Full name", hintText: "Last name, First name")),

          //! SPACER
          const SizedBox(height: 20.0),

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
              decoration: const InputDecoration(
                  labelText: "Password", hintText: "*******"))
        ]))),

        //! SPACER
        const SizedBox(height: 20.0),

        //! SignUp BUTTON
        SizedBox(
            width: theParentConstraints.maxWidth * 0.5,
            child: ElevatedButton(
                onPressed: () {}, child: const Text("Create account"))),
      ]),
    );
  }
}
