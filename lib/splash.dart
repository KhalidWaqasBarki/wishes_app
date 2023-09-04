import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wishes_app/main_page.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => const MainPage()));

    });
    setState(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String title = '' ;
    DateTime date = DateTime.now();
    int newTime = int.parse(DateFormat('kk').format(date));
    (newTime <= 12) ? title = 'Good Morning'
         : (newTime > 12 && newTime < 16) ?
             title = 'Good Afternoon'
            : (newTime >= 16 && newTime < 21) ?
                 title = ' Good Evening' : title = '';
    return Scaffold(
        backgroundColor: Colors.greenAccent,
        body: Center(
          child: Text(
            title,
            style: GoogleFonts.courgette(
                fontWeight: FontWeight.bold, fontSize: 40),
          ),
        ));
  }
}
