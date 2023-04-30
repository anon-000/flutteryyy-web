import 'package:flutter/material.dart';

///
/// Created by Auro on 01/05/23 at 12:14 AM
///

class DashboardPage extends StatefulWidget {
  static const routeName = '/dashboard';

  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Dashboard"),
      ),
    );
  }
}
