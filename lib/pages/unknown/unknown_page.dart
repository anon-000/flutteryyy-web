import 'package:flutter/material.dart';

///
/// Created by Auro on 01/05/23 at 12:35 AM
///

class UnKnownPage extends StatelessWidget {
  static const String routeName = '/404';

  const UnKnownPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Text(
            "404 | Ops you are lost",
            style: TextStyle(fontSize: 22),
          )),
    );
  }
}
