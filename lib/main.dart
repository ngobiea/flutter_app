import 'package:flutter/material.dart';

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
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
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
      ),
      // body: width < 480 ? ListData() : GridData(),
      // body: orientation == Orientation.portrait
      //     ? const ListData()
      //     : const GridData(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: LayoutBuilder(
          builder: (context, constraints) {
            print('Media: $width');
            print('Builder: ${constraints.maxWidth}');
            if (constraints.maxWidth > 1200) {
              return const GridData(
                aspectRation: 8,
              );
            }else if(constraints.maxWidth>800){
              return const GridData(
                aspectRation: 4,
              );
            }
            return const ListData();
          },
        ),
      ),
    );
  }
}

class ListData extends StatelessWidget {
  const ListData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.person),
            trailing: const Icon(Icons.waves),
            title: Text("Person $index"),
          );
        });
  }
}

class GridData extends StatelessWidget {
  const GridData({super.key, required this.aspectRation});
  final double aspectRation;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: aspectRation,
      children: List.generate(
        20,
        (index) {
          return ListTile(
            leading: const Icon(Icons.person),
            trailing: const Icon(Icons.waves),
            title: Text("Person $index"),
          );
        },
      ),
    );
  }
}
