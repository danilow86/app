import 'package:flutter/material.dart';
import 'package:myapp/app_controller.dart';
import 'package:myapp/home_page.dart';
import 'package:myapp/login_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.red,
            brightness: AppController.instance.isDartTheme
                ? Brightness.dark
                : Brightness.light,
          ),
          home: LoginPage(),
        );
      },
    );
  }
}
