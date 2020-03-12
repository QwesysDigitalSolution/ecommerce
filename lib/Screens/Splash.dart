import 'dart:async';

import 'package:flutter/material.dart';


class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), () async {
      Navigator.pushReplacementNamed(context, "/IntroPage");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Image.asset(
              "assets/logo.png",
              fit: BoxFit.contain,
              height: 100,
            ),
          ),
        ),
      ),
    );
  }
}
