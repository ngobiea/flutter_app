import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            'Container',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Container(
            height: 360,
            width: 360,
            alignment: Alignment.bottomRight,
            decoration: const BoxDecoration(
              color: Colors.pink,
              // shape: BoxShape.circle
              borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            padding: const EdgeInsets.all(
              20.0,
            ),
            child: const Text(
              'Hello',
              // textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 60,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
