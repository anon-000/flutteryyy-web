import 'package:flutter/material.dart';

///
/// Created by Auro on 01/05/23 at 2:38 AM
///

class HomePage extends StatelessWidget {
  static const routeName = '/home';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Home"),
    );
  }
}
