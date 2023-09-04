import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wishes_app/detail_page.dart';
import 'package:wishes_app/wishes_model.dart';

class MsgPage extends StatelessWidget {
  String? title;
  MsgPage({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      appBar: AppBar(
        title: Center(
            child: Text(
          title!,
          style: GoogleFonts.acme(
              fontWeight: FontWeight.bold, color: Colors.white),
        )),
        backgroundColor: Colors.blueGrey,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: wishes
              .where((element) => element.category == title)
              .map((e) => Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>DetPage(detail: e.message!,)));
                  },
                  child: Card(
                      color: Colors
                          .primaries[Random().nextInt(Colors.primaries.length)],
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          e.message!,
                          style: GoogleFonts.acme(fontSize: 15),
                        ),
                      )),
                ),
              ))
              .toList(),
        ),
      ),
    );
  }
}
