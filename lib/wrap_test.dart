import 'package:flutter/material.dart';

void main() => runApp(
  const MaterialApp(
    home: Scaffold(body: SafeArea(child: SuperSimpleWrap())),
  ),
);

class SuperSimpleWrap extends StatelessWidget {
  const SuperSimpleWrap({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: 
         //Column(
        //   children: [
        //     Expanded(
        //       child: Container(color: Colors.amber,),
        //     )
        //   ],
        // )


        // ListView(
        //     children: [
        //       ListTile(
        //         leading: Icon(Icons.person),
        //         title: Text("Atif Ishaq"),
        //         subtitle: Text('Computer Science'),
        //       )
        //     ],
        // ), 
        SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(

            children: [
              Text('Content 1'),
              Text('Content 1'),
              Text('Content 1'),
              Text('Content 1'),
              Text('Content 1'),
              Text('Content 1'),

              //Container(height: 650,),
              Text('Content 1'),
              Text('Content 1'),
              Text('Content 1'),
              Text('Content 1'),
              Text('Content 1'),
              Text('Content 1'),
            ],
          ),
        )
        // Wrap(
        //   spacing: 10.0, // Horizontal gap between boxes
        //   runSpacing: 10.0, // Vertical gap between rows
        //   children: [
        //     Container(color: Colors.red, width: 100, height: 100),
        //     Container(color: Colors.blue, width: 100, height: 100),
        //     Container(color: Colors.green, width: 100, height: 100),
        //     Container(color: Colors.orange, width: 100, height: 100),
        //     Container(color: Colors.purple, width: 100, height: 100),
        //     Chip(label: Text('Flutter')),
        //     Chip(label: Text('Dart')),
        //     Chip(label: Text('Firebase')),
        //     Chip(label: Text('AI')),
        //   ],
        // ),
      ),
    );
  }
}
