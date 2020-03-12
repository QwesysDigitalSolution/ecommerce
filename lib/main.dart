import 'package:ecommerce/Screens/IntroPage.dart';
import 'package:ecommerce/Screens/Login.dart';
import 'package:ecommerce/Screens/SignUp.dart';
import 'package:ecommerce/Screens/SignUp1.dart';
import 'package:ecommerce/Screens/Splash.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      title: 'Ecommerce',
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Splash(),
        '/IntroPage': (context) => IntroPage(),
        '/Login': (context) => Login(),
        '/SignUp': (context) => SignUp(),
        '/SignUp1': (context) => SignUp1(),
      },
      theme: ThemeData(
        textTheme: GoogleFonts.latoTextTheme(textTheme).copyWith(
          body1: GoogleFonts.oswald(textStyle: textTheme.body1),
        ),
      ),
      //home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
