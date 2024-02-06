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
  GlobalKey<ScaffoldState> drawerKey = GlobalKey();

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
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        key: drawerKey,
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
          actions: [
            IconButton(
              splashRadius: 30,
              onPressed: () {
                setState(() {
                  text = 'Casting Click';
                });
              },
              icon: const Icon(
                Icons.cast,
              ),
            ),
            IconButton(
              splashRadius: 30,
              onPressed: () {
                setState(() {
                  text = 'Notification Click';
                });
              },
              icon: const Icon(
                Icons.notifications,
              ),
            ),
            IconButton(
              splashRadius: 30,
              onPressed: () {
                setState(() {
                  text = 'Search Click';
                });
              },
              icon: const Icon(
                Icons.search,
              ),
            ),
            IconButton(
              splashRadius: 30,
              onPressed: () {
                setState(() {
                  drawerKey.currentState?.openEndDrawer();
                });
              },
              icon: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/my-profile.jpg'),
              ),
            ),
          ],
          bottom: const TabBar(tabs: [
            Tab(
              icon: Icon(Icons.car_repair),
            ),
            Tab(
              icon: Icon(Icons.home_repair_service),
            ),
            Tab(
              icon: Icon(Icons.room_service),
            ),
          ]),
        ),
        endDrawer: const Drawer(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  foregroundColor: Colors.white,
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.save,
                      color: Colors.white,
                    ),
                    Text(
                      'Save',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    text = 'TextButton Clicked';
                  });
                },
                style: TextButton.styleFrom(),
                child: const Text(
                  'Ok Button',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ButtonBar(
                alignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        text = 'TextButton in ButtonBar Clicked';
                      });
                    },
                    child: const Text('No'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      foregroundColor: Colors.white,
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Yes',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              // Build a custom button
              MaterialButton(
                onPressed: () {},
                color: Colors.amberAccent,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.purple, width: 2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  'Enter',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
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
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            setState(() {
              text = 'FAB Clicked';
            });
          },
          // mini: true,
          elevation: 10,
          backgroundColor: Colors.red,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              20,
            ),
          ),
          icon: const Icon(
            Icons.add,
            color: Colors.white,
          ),
          label: const Text(
            'Add',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
