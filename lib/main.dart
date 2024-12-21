
import 'package:crisisconnect/loginpage.dart';
import 'package:crisisconnect/Signup.dart';
import 'package:crisisconnect/DonationPage.dart';
import 'package:flutter/material.dart';

import 'complaint.dart';
import 'emergency.dart';
import 'homescreen.dart';
import 'loginpage.dart';
import 'payment.dart';
import 'profile.dart';
import 'registration.dart';
import 'resources.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      home:EmergencyScreen(),
      debugShowCheckedModeBanner: false,
     
    );
  }
}





 