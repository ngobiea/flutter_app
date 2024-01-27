import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello World',
              style: GoogleFonts.robotoMono(
                fontSize: 50,
                fontWeight: FontWeight.w700,
                color: Colors.red[200],
                letterSpacing: 2,
              ),
            ),
            Text.rich(
              TextSpan(
                  text: "Hello ",
                  style: GoogleFonts.robotoMono(
                    fontSize: 40,
                    color: Colors.green,
                    fontWeight: FontWeight.w300,
                  ),
                  children: [
                    TextSpan(
                      text: "World",
                      style: GoogleFonts.robotoMono(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    TextSpan(
                      text: '!',
                      style: GoogleFonts.robotoMono(
                        color: Colors.blue,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ]),
            )
          ],
        ),
      ),
    ),
  ));
}
