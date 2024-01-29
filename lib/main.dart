import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            'Rows & Columns',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Container(
            color: Colors.black,
            height: 300,
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.end,
              // verticalDirection: VerticalDirection.up,
              children: [
                Container(
                  width: 100,
                  height: 40,
                  color: Colors.green,
                ),
                Container(
                  width: 100,
                  height: 40,
                  color: Colors.white,
                ),
                Container(
                  width: 100,
                  height: 40,
                  color: Colors.blue,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  // textDirection: TextDirection.rtl,
                  children: [
                    Text(
                      'Le',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      '.................',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Le3000',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
