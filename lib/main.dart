import 'package:flutter/material.dart';
import 'package:flutter_app/defaults/defaults.dart';
import 'package:google_fonts/google_fonts.dart';

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

class AppDrawerDivider extends StatelessWidget {
  const AppDrawerDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 1,
      thickness: 2,
      color: Defaults.bottomNavItemColor,
      indent: 3,
      endIndent: 3,
    );
  }
}

// class AppDrawerTile extends StatelessWidget {
//   const AppDrawerTile({super.key, required this.index, required this.onTap});
//   final int index;
//   final VoidCallback onTap;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 8),
//       child: ListTile(
//         selected: index == indexClicked,
//         selectedTileColor: Defaults.bottomNavSelectedTileColor,
//         onTap: onTap,
//         leading: Icon(
//           Defaults.drawerItemIcon[index],
//           size: 15,
//           color: indexClicked == index
//               ? Defaults.bottomNavItemSelectedColor
//               : Defaults.bottomNavItemColor,
//         ),
//         title: Text(
//           Defaults.drawerItemText[index],
//           style: GoogleFonts.sanchez(
//             fontSize: 20,
//             fontWeight: FontWeight.w500,
//             color: indexClicked == index
//                 ? Defaults.bottomNavItemSelectedColor
//                 : Defaults.bottomNavItemColor,
//           ),
//         ),
//       ),
//     );
//   }
// }
