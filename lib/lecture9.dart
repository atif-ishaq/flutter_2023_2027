import 'package:flutter/material.dart';

class Practice extends StatelessWidget {
  const Practice({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Practice Widgets')),
        body:
        // Padding(
        //   padding: const EdgeInsets.all(45.0),
        //   child: Align(
        //     alignment: Alignment.bottomRight,
        //     child: Icon(Icons.notifications),
        //   ),
        // )
                     
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //    children: [
            //     Expanded(
            //       child: Padding(
            //         padding: EdgeInsets.all(20),
            //         child: Container(
            //         color: Colors.amber,
            //                     ),
            //       )),
            //    Expanded(child: Container(
                  
            //       color: Colors.red,
            //     )),
            //     Expanded(child: Padding(
            //       padding: const EdgeInsets.all(8.0),
            //       child: Container(
            //         padding: EdgeInsets.all(20),
            //         color: Colors.blue,
            //       ),
            //     )),
            //   ],
            // ),
           
            // Row(
            //   children: [
            //   Expanded(
            //       flex: 1,child: Container(color: Colors.blue,)
            //       ),
            //   Expanded(flex: 2, child: Container(color: Colors.amber,),),
            //   Expanded(flex: 3, child: Container(color: Colors.black,),)

            //   ],
            // ),
            Row(
              children: [
                Icon(Icons.info),
                SizedBox(width: 10),
                //Wrapping in Flexible stops the text from overflowing
                Flexible(
                  child: Text(
                    'This is an incredibly long alert message that will cleanly wrap to the next line instead of breaking the UI.',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ]
            ),    
              //  Row(
              //    children: [
              //      Text(
              //           'This is an incredibly long alert message that will cleanly wrap to the next line instead of breaking the UI.',
              //           style: TextStyle(fontSize: 16),
              //         ),
              //    ],
              //  ),
              //]
            //),
                // // Wrap(
                //   spacing: 8,
                //   runSpacing: 8,
                //   children: [
                //     Chip(label: Text('Flutter')),
                //     Chip(label: Text('Dart')),
                //     Chip(label: Text('Firebase')),
                //     Chip(label: Text('AI')),
                //   ],
                // ),
           //  ],
           // ),
    ));
  }
}
