import 'package:flutter/material.dart';

void main(List<String> args) {
  var widgets = [
    const ListTile(
      leading: Text(
        'J',
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.w800,
        ),
      ),
      title: Text('John Rambo'),
      subtitle: Text('Never runs out of bullets!'),
      trailing: Text(
        'Invincible',
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
      ),
    ),
    const ListTile(
      leading: Text(
        'P',
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.w800,
        ),
      ),
      title: Text('Peter Pollock'),
      subtitle: Text('Bowler'),
      trailing: Text(
        '50 wickets',
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
      ),
    ),
     const ListTile(
      leading: Text(
        'P',
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.w800,
        ),
      ),
      title: Text('Peter Pollock'),
      subtitle: Text('Bowler'),
      trailing: Text(
        '50 wickets',
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
      ),
    ),
     const ListTile(
      leading: Text(
        'P',
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.w800,
        ),
      ),
      title: Text('Peter Pollock'),
      subtitle: Text('Bowler'),
      trailing: Text(
        '50 wickets',
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
      ),
    ),
  ];
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            'ListView in Flutter',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              // color: Colors.black,
              height: 200,

              child: ListView.builder(
                  itemCount: widgets.length,
                  itemBuilder: (context, index) {
                    return widgets[index];
                  }),
              // child: ListView(
              //   scrollDirection: Axis.horizontal,
              //   padding: const EdgeInsets.all(8),
              //   children: const [
              //     Text(
              //       'Peter',
              //       style: TextStyle(fontSize: 20, color: Colors.blue),
              //     ),
              //     SizedBox(
              //       width: 20,
              //     ),
              //     Text(
              //       'Paul',
              //       style: TextStyle(fontSize: 20, color: Colors.blue),
              //     ),
              //     SizedBox(
              //       width: 20,
              //     ),
              //     Text(
              //       'John',
              //       style: TextStyle(fontSize: 20, color: Colors.blue),
              //     ),
              //     SizedBox(
              //       width: 20,
              //     ),
              //     Text(
              //       'Peter',
              //       style: TextStyle(fontSize: 20, color: Colors.blue),
              //     ),
              //     SizedBox(
              //       width: 20,
              //     ),
              //     Text(
              //       'Paul',
              //       style: TextStyle(fontSize: 20, color: Colors.blue),
              //     ),
              //     SizedBox(
              //       width: 20,
              //     ),
              //     Text(
              //       'John',
              //       style: TextStyle(fontSize: 20, color: Colors.blue),
              //     ),
              //         SizedBox(
              //       width: 20,
              //     ),
              //     Text(
              //       'Peter',
              //       style: TextStyle(fontSize: 20, color: Colors.blue),
              //     ),
              //     SizedBox(
              //       width: 20,
              //     ),
              //     Text(
              //       'Paul',
              //       style: TextStyle(fontSize: 20, color: Colors.blue),
              //     ),
              //     SizedBox(
              //       width: 20,
              //     ),
              //     Text(
              //       'John',
              //       style: TextStyle(fontSize: 20, color: Colors.blue),
              //     ),
              //   ],
              // ),
            ),
            const Text(
              'Hello World',
              style: TextStyle(fontSize: 40, color: Colors.blue),
            )
          ],
        ),
      ),
    ),
  );
}
