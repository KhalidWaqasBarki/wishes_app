import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wishes_app/msg_page.dart';
import 'package:wishes_app/wishes_model.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    List unique = [];
    for (var item in wishes) {
      unique.add(item.category);
    }
    unique = unique.toSet().toList();

    return Scaffold(
      appBar: AppBar(
        title:  Center(
          child: Text(
            'Wishes App',
            style: GoogleFonts.acme(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: GridView.builder(
          itemCount: unique.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => MsgPage(
                                title: unique[index],
                              )));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors
                          .primaries[Random().nextInt(Colors.primaries.length)],
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blueGrey.withOpacity(0.3),
                          spreadRadius: 5,
                          blurRadius: 5,
                          // offset: Offset(5, 5)
                        )
                      ]),
                  child: Center(
                    child: Text(
                      unique[index],
                      textAlign: TextAlign.center,
                      style: GoogleFonts.acme(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
