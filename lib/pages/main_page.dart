import 'package:flutter/material.dart';
import 'package:flutter_app/routes/routes.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String result = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(RouteManager.secondPage);
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              child: const Text(
                'Go to second page',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () async {
                var resultBack = await Navigator.of(context).pushNamed(
                  RouteManager.thirdPage,
                  arguments: {
                    'name': 'Augustine Ngobie',
                  },
                );
                setState(() {
                  result = resultBack as String;
                });
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              child: const Text(
                'Go to Third page',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Text(result)
          ],
        ),
      ),
    );
  }
}
