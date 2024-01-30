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
  void initState() {
    // TODO: implement initState
    super.initState();
    selectscreen();
  }
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
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
        const Duration(seconds: 3),
            () {
          Navigator.pushReplacementNamed(context, "welcome");
        },
      );
    }
    else
    {
      Future.delayed(
        const Duration(seconds: 3),
            () {
          Navigator.pushReplacementNamed(context, "signIn");
        },
      );
    }
  }
}