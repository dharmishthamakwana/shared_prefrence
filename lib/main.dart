import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_prefrence/screen/home/provider/home_provider.dart';
import 'package:shared_prefrence/screen/home/view/home_Screen.dart';
import 'package:shared_prefrence/screen/home/view/signin_screen.dart';
import 'package:shared_prefrence/screen/home/view/signup_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Home_provider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SignIn(),
          'Sign': (context) => SignUp(),
          'welcome': (context) => Home(),
        },
      ),
    ),
  );
}
