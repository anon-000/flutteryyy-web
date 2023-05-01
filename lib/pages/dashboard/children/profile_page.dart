import 'package:flutter/material.dart';

///
/// Created by Auro on 01/05/23 at 2:39 AM
///

class ProfilePage extends StatelessWidget {
  static const routeName = '/profile';

  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Profile"),
          TextButton(
            onPressed: () {
              //
            },
            child: const Text('Open settings'),
          ),
        ],
      ),
    );
  }
}
