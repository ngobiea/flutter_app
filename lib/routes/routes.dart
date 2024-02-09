// import 'package:flutter/material.dart';
// import 'package:flutter_app/pages/main_page.dart';
// import 'package:flutter_app/pages/second_page.dart';
// import 'package:flutter_app/pages/third_page.dart';

// class RouteManager {
//   static const String homePage = '/';
//   static const String secondPage = '/secondPage';
//   static const String thirdPage = '/thirdPage';

//   static Route<dynamic> generateRoute(RouteSettings settings) {
//     // Map<String, dynamic> valuePassed;
//     // if (settings.arguments != null) {
//     //   valuePassed = settings.arguments as Map<String, dynamic>;
//     // }

//     Map<String, dynamic>? valuePassed;
//     if (settings.arguments != null) {
//       valuePassed = settings.arguments as Map<String, dynamic>;
//     }
//     if (settings.name == '/') {
//       return MaterialPageRoute(
//         builder: (context) => const MainPage(),
//       );
//     } else if (settings.name == '/secondPage') {
//       return MaterialPageRoute(
//         builder: (context) => const SecondPage(),
//       );
//     } else if (settings.name == '/thirdPage') {
//       return MaterialPageRoute(
//         builder: (context) => ThirdPage(name: valuePassed?['name']),
//       );
//     } else {
//       throw const FormatException("Route not found! check routes again");
//     }
//   }
// }
