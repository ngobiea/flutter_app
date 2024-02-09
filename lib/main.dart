import 'package:flutter/material.dart';
import 'package:flutter_app/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouteManager.homePage,
      onGenerateRoute: RouteManager.generateRoute,
      // theme: ThemeData(
      //   primaryColor: Colors.purple,
      //   appBarTheme: const AppBarTheme(
      //     backgroundColor: Colors.purple,
      //   ),
      //   scaffoldBackgroundColor: Colors.red[100],
      //   fontFamily: 'Times New Roman'
      // ),
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.blueGrey[900]
      ),
    );
  }
}
