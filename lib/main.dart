import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var indexClicked = 0;
  String text = 'None Clicked';
  String name = 'Name to be display';
  TextEditingController nameController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    numberController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[400],
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Image(image: AssetImage('assets/images/logo.png')),
        ),
        title: const Text(
          "Appbar and TabBar",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppTextField(
                  controller: nameController,
                  hint: 'Please enter your name',
                  type: TextInputType.text,
                ),
                const SizedBox(height: 20),
                AppTextField(
                  controller: numberController,
                  hint: 'Please enter phone number',
                  type: TextInputType.number,
                ),
                const SizedBox(height: 20),
                AppTextField(
                  controller: emailController,
                  hint: 'Please enter email',
                  type: TextInputType.emailAddress,
                ),
                const SizedBox(height: 20),
                AppTextField(
                  controller: passwordController,
                  hint: 'Password',
                  type: TextInputType.text,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      name = nameController.text;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                  ),
                  child: const Text(
                    'Submit',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(name)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.controller,
    required this.hint,
    required this.type,
    // required this.isPassword,
  });

  final TextEditingController controller;
  final String hint;
  final TextInputType type;
  // final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: hint,
        labelStyle: const TextStyle(color: Colors.blue),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.greenAccent,
          ),
        ),enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blue,
          )
         ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(
              20,
            ),
          ),
        ),

        // focusColor: Colors.green,
      ),
      keyboardType: type,
      cursorColor: Colors.greenAccent,
      obscureText: hint == 'Password',
      style: const TextStyle(
        color: Colors.red,
      ),
    );
  }
}
