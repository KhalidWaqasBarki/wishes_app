import 'dart:math';

import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';

class DetPage extends StatelessWidget {
  String? detail;
  DetPage({super.key, this.detail});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Center(
            child: Text(
          'Wishes',
          style: GoogleFonts.acme(color: Colors.white),
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  constraints: BoxConstraints(minHeight: 200),
                  decoration: BoxDecoration(
                      color: Colors
                          .primaries[Random().nextInt(Colors.primaries.length)],
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [BoxShadow(blurRadius: 10)]),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        detail!,
                        style: GoogleFonts.acme(
                            color: Colors.black87,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(onPressed: (){
                    Share.share(detail!);
                  }, icon: Icon(Icons.share),
                  iconSize: 40,),
                  IconButton(onPressed: (){
                    FlutterClipboard.copy(detail!).then((value) => Text('copied'));
                  }, icon: Icon(Icons.copy),
                    iconSize: 40,

                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
