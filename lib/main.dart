import 'package:flutter/material.dart';
import 'package:flutter_app/defaults/defaults.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var indexClicked = 0;

  final pages = [
    const Center(
      child: Text(
        'Inbox',
      ),
    ),
    const Center(
      child: Text(
        'Starred',
      ),
    ),
    const Center(
      child: Text(
        'Sent',
      ),
    ),
    const Center(
      child: Text(
        'Drafts',
      ),
    ),
    const Center(
      child: Text(
        'Trash',
      ),
    ),
    const Center(
      child: Text(
        'Span',
      ),
    ),
  ];
  VoidCallback updateState(int index) {
    return () {
      setState(() {
        indexClicked = index;
      });
      Navigator.pop(context);
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: const Text(
          "Bottom Navigation",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: pages[indexClicked],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue[100],
        // type: BottomNavigationBarType.fixed,
        type: BottomNavigationBarType.shifting,

        elevation: 60,
        selectedItemColor: Defaults.bottomNavItemSelectedColor,
        unselectedItemColor: Defaults.bottomNavItemColor,
        currentIndex: indexClicked,
        onTap: (value) {
          setState(() {
            indexClicked = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.blue[100],
            icon: Icon(
              Defaults.bottomNavItemIcon[0],
            ),
            label: Defaults.bottomNavItemText[0],
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.yellow[100],
              icon: Icon(
                Defaults.bottomNavItemIcon[1],
              ),
              label: Defaults.bottomNavItemText[1]),
          BottomNavigationBarItem(
            backgroundColor: Colors.green[100],
              icon: Icon(
                Defaults.bottomNavItemIcon[2],
              ),
              label: Defaults.bottomNavItemText[2]),
          BottomNavigationBarItem(
            backgroundColor: Colors.red[100],
              icon: Icon(
                Defaults.bottomNavItemIcon[3],
              ),
              label: Defaults.bottomNavItemText[3]),
          BottomNavigationBarItem(
            backgroundColor: Colors.orange[100],

              icon: Icon(
                Defaults.bottomNavItemIcon[4],
              ),
              label: Defaults.bottomNavItemText[4]),
          BottomNavigationBarItem(
            backgroundColor: Colors.pink[100],

              icon: Icon(
                Defaults.bottomNavItemIcon[5],
              ),
              label: Defaults.bottomNavItemText[5]),
        ],
      ),
    );
  }
}

