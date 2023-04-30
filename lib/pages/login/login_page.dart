import 'package:flutter/material.dart';
import 'package:get/get.dart';

///
/// Created by Auro on 01/05/23 at 12:14 AM
///

class LoginPage extends StatefulWidget {
  static const routeName = '/login';

  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double height = Get.height;
    return Scaffold(
      body: SizedBox(
        height: height,
        child: Row(
          children: [
            Expanded(
              child: Image.network(
                "https://www.simplilearn.com/ice9/free_resources_article_thumb/Introduction_to_Cyber_Security.jpg",
                fit: BoxFit.cover,
                height: double.infinity,
              ),
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [],
              ),
            )
          ],
        ),
      ),
    );
  }
}
