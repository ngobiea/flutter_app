import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Stateless and Stateful",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: const Center(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'Welcome to the app',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              SizedBox(height: 20),
              Buttons(text: 'Hello'),
              SizedBox(height: 20),
              FooterWidget()
            ],
          ),
        ),
      ),
    );
  }
}

class Buttons extends StatefulWidget {
  const Buttons({super.key, required this.text});
  final String text;

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  var maleCounter = 0;
  var femaleCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        'Nr of Males: $maleCounter',
        style: const TextStyle(
          fontSize: 20,
        ),
      ),
      Text(
        'Nr of Females: $femaleCounter',
        style: const TextStyle(
          fontSize: 20,
        ),
      ),
      const SizedBox(height: 20),
      MyOwnButton(
          onTap: () {
            setState(() {
              maleCounter++;
            });
          },
          text: 'Male +'),
      const SizedBox(height: 20),
      MyOwnButton(
          onTap: () {
            setState(() {
              femaleCounter++;
            });
          },
          text: 'Female +'),
    ]);
  }
}

class MyOwnButton extends StatelessWidget {
  const MyOwnButton({super.key, required this.onTap, required this.text});
  final VoidCallback onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTap,
      height: 50,
      minWidth: 200,
      color: Colors.blue,
      elevation: 10,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 30,
          color: Colors.white,
        ),
      ),
    );
  }
}

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.arrow_back),
            Text('Developed by Ngobiea'),
            Icon(Icons.arrow_forward)
          ],
        )
      ],
    );
  }
}
