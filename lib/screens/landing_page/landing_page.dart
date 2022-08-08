import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      scrollDirection: Axis.vertical,
      children: [
        Container(color: Colors.red),
        Container(color: Colors.yellow),
        Container(color: Colors.blue)
      ],
    ));
  }
}
