import 'package:flutter/material.dart';
import 'package:shared_prefrence/utiles/shared.dart';

import '../../../main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    selectscreen();
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: FlutterLogo(size: 150,)
        ),
      ),
    );
  }

  Future<void> selectscreen() async {
    Shr shr = Shr();
    Map m1 = await shr.readShr();
    if (m1["check"] == true) {
      Future.delayed(
        Duration(seconds: 3),
            () {
          Navigator.pushReplacementNamed(context, "welcome");
        },
      );
    }
    else
    {
      Future.delayed(
        Duration(seconds: 3),
            () {
          Navigator.pushReplacementNamed(context, "signIn");
        },
      );
    }
  }
}