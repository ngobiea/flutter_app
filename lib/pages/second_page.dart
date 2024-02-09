// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_app/pages/third_page.dart';

class Screen2 extends StatelessWidget {
  // const Screen2({Key? key, required this.data,required this.changeData}) : super(key: key);
  const Screen2({Key? key}) : super(key: key);

  // final String data;
  // final Function(String) changeData;
  @override
  Widget build(BuildContext context) {
    print('Building Screen2');
    return const Screen3(
      // data: data,
      // changeData: changeData,
    );
  }
}
