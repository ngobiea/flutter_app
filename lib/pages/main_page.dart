// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_app/data/app_data.dart';
import 'package:flutter_app/pages/second_page.dart';
import 'package:provider/provider.dart';


class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print('Building MainPage');
    return ChangeNotifierProvider(
      create: (context) => AppData(),
      builder: (context, child) {
        return Scaffold(
          appBar: AppBar(
            // title: Text(Provider.of<AppData>(context).name),
            // or
            title: Consumer<AppData>(
              builder: (BuildContext context, AppData value, Widget? child) {
                return Text(value.name);
              },
            ),
          ),
          body: const Screen2(
              // data: data,
              // changeData: changeData,
              ),
        );
      },
    );
  }
}

// class MainPage extends StatefulWidget {
//   const MainPage({Key? key}) : super(key: key);

//   @override
//   State<MainPage> createState() => _MainPageState();
// }

// class _MainPageState extends State<MainPage> {
//   // String data = "Augustine Ngobie";
//   // void changeData(String newData) {
//   //   setState(() {
//   //     data = newData;
//   //   });
//   // }

//   @override
//   Widget build(BuildContext context) {
//     print('Building MainPage');
//     return ChangeNotifierProvider(
//       create: (context) => AppData(),
//       builder: (context, child) {
//         return Scaffold(
//           appBar: AppBar(
//             // title: Text(Provider.of<AppData>(context).name),
//             // or
//             title: Consumer<AppData>(
//               builder: (BuildContext context, AppData value, Widget? child) {
//                 return Text(value.name);
//               },
//             ),
//           ),
//           body: const Screen2(
//               // data: data,
//               // changeData: changeData,
//               ),
//         );
//       },
//     );
//   }
// }

