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
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  final snackBar = SnackBar(
    content: const Text('Success saving'),
    backgroundColor: Colors.blueAccent,
    duration: const Duration(seconds: 3),
    action: SnackBarAction(
        label: 'Undo',
        onPressed: () {
          // ignore: avoid_print
          print('undo press');
        }),
  );

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
      key: scaffoldKey,
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
                scaffoldKey.currentState?.openEndDrawer();
              });
            },
            icon: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/my-profile.jpg'),
            ),
          ),
        ],
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
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
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
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            20,
                          ),
                        ),
                        actions: [
                          TextButton(
                              onPressed: () {
                                setState(() {
                                  text = 'You clicked No';
                                });
                                Navigator.pop(context);
                              },
                              child: const Text('No')),
                          TextButton(
                              onPressed: () {
                                setState(() {
                                  text = 'You clicked Yes';
                                });
                                Navigator.pop(context);
                              },
                              child: const Text('Yes'))
                        ],
                        title: const Text('Delete entry 12345'),
                        content: const Text(
                            'Are you sure that you want to delete this entry?'),
                      );
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
                  style: TextButton.styleFrom(backgroundColor: Colors.red),
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
              onPressed: () async {
                final String loc = await showDialog(
                    context: context,
                    builder: (context) {
                      return SimpleDialog(
                        title: const Text("Choose your location"),
                        children: [
                          SimpleDialogOption(
                            onPressed: () {
                              Navigator.pop(
                                  context, 'You clicked South Africa');
                            },
                            child: const Text('South Africa'),
                          ),
                          SimpleDialogOption(
                            onPressed: () {
                              Navigator.pop(context, 'You clicked America');
                            },
                            child: const Text('America'),
                          ),
                          SimpleDialogOption(
                            onPressed: () {
                              Navigator.pop(context, 'You clicked Brazil');
                            },
                            child: const Text('Brazil'),
                          ),
                        ],
                      );
                    });
                setState(() {
                  text = loc;
                });
              },
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
            scaffoldKey.currentState?.showBottomSheet((context) {
              return Container(
                height: 110,
                decoration: const BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                child: Column(children: [
                  const Text(
                    'Are your sure you want to delete?',
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            'Yes',
                            style: TextStyle(),
                          )),
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);

                          },
                          child: const Text(
                            'No',
                            style: TextStyle(),
                          ))
                    ],
                  )
                ]),
              );
            });
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
    );
  }
}
