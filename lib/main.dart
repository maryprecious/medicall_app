import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicall_app/pages/home_page.dart';
import 'package:medicall_app/bottom_navigation.dart';
import 'package:medicall_app/pages/contact_page.dart';
import 'package:medicall_app/pages/login_page.dart';
import 'package:medicall_app/pages/notification_page.dart';
import 'package:medicall_app/pages/onboarding_page.dart';
import 'package:medicall_app/pages/signup_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Save A Life',
      theme: ThemeData(
        //here you can define the fonts you will using across your app
        // textTheme: GoogleFonts.robotoTextTheme(),
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      debugShowCheckedModeBanner: false,
     routes: {
       "/": (context)=> OnboardingPage(),
        "/home": (context)=> BottomNavigation(),
        "/login": (context)=> LoginPage(),
        "/signup": (context)=> SignupPage(),
      },
      // home: BottomNavigation()
      initialRoute: "/login_page",
    );
  }
}

 