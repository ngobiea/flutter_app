import 'package:flutter/material.dart';

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
      body: Container(
        // padding: EdgeInsets.only(top: 60),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(color: Colors.grey[850]),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(10, 70, 10, 0),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            const CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/images/my-profile.jpg'),
            ),
            const Text.rich(
              TextSpan(
                text: 'Augustine Ngobie\n',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
                children: [
                  TextSpan(
                    text: '\t\t\t\t\t\t\t\tngobiea@gmail.com',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            Container(
              height: 500,
              padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: double.infinity,
                    height: 55,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.yellow[400],
                        borderRadius: BorderRadius.circular(25)),
                    child: const Text(
                      'Upgrade to Premium',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 55,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.grey[600],
                        borderRadius: BorderRadius.circular(25)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.shopping_bag_outlined,
                                color: Colors.white,
                                size: 40,
                              ),
                            ),
                            Text(
                              'Your order history',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 55,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.grey[600],
                        borderRadius: BorderRadius.circular(25)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.help_outline,
                                color: Colors.white,
                                size: 40,
                              ),
                            ),
                            Text(
                              'Help and Support',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 55,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.grey[600],
                        borderRadius: BorderRadius.circular(25)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.redeem_outlined,
                                color: Colors.white,
                                size: 40,
                              ),
                            ),
                            Text(
                              'Load gift voucher',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 55,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.grey[600],
                        borderRadius: BorderRadius.circular(25)),
                    child: const Row(
                      // mainAxisAlignment: MainAxi,
                      children: [
                         Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.logout,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                        Text(
                          'Logout',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                   
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
