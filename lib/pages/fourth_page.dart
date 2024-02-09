// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_app/data/app_data.dart';
import 'package:provider/provider.dart';

class Screen4 extends StatelessWidget {
  // const Screen4({Key? key, required this.data, required this.changeData})
  //     : super(key: key);
  const Screen4({Key? key}) : super(key: key);
  // final String data;
  // final Function(String) changeData;

  @override
  Widget build(BuildContext context) {
    print('Building Screen4');
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Text(Provider.of<AppData>(context).name),
          // Text(context.watch<AppData>().name),
          Consumer<AppData>(
            builder: (BuildContext context, AppData value, Widget? child) {
              return Text(value.name);
            },
          ),

          // Text(data),
          ElevatedButton(
            onPressed: () {
              // changeData('Samuella Lahai');
              // Provider.of<AppData>(context,listen: false).changeData('Samuella Lahai');
              context.read<AppData>().changeData('Samuella Lahai');
            },
            child: const Text('Change data'),
          ),
        ],
      ),
    );
  }
}
