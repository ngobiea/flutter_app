import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Stack and Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var data = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Stack(
        children: [
          const Positioned(
            top: 50,
            left: 20,
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 30,
            ),
          ),
          const Positioned(
            top: 50,
            right: 20,
            child: Icon(
              Icons.settings,
              color: Colors.white,
              size: 30,
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 50,
                right: 50,
                bottom: 20,
                top: 20,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage('assets/images/my-profile.jpg'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Augustine Ngobie',
                    style: GoogleFonts.lato(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'ngobiea@gmail.com',
                    style: GoogleFonts.lato(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: 500,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.yellow[400],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(30))),
                    child: Center(
                      child: Text(
                        'Upgrade to Premium',
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const ProfileMenuItem(
                    text: 'Your order history',
                    icon: Icons.shopping_bag_outlined,
                    arrowShown: true,
                  ),
                  const SizedBox(height: 20),
                  const ProfileMenuItem(
                    text: 'Help and Support',
                    icon: Icons.help_outline,
                    arrowShown: true,
                  ),
                  const SizedBox(height: 20),
                  const ProfileMenuItem(
                    text: 'Load gift voucher',
                    icon: Icons.redeem_outlined,
                    arrowShown: true,
                  ),
                  const SizedBox(height: 20),
                  const ProfileMenuItem(
                    text: 'Logout',
                    icon: Icons.logout,
                    arrowShown: false,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileMenuItem extends StatelessWidget {
  const ProfileMenuItem({
    super.key,
    required this.text,
    required this.icon,
    required this.arrowShown,
  });
  final IconData icon;
  final String text;
  final bool arrowShown;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.grey[500], borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 40,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                text,
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          arrowShown
              ? const Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 30,
                  ),
                )
              : Container()
        ],
      ),
    );
  }
}
