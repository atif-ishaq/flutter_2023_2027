
import 'package:flutter/material.dart';
import 'package:flutter_application_se/campus.dart';
import 'package:flutter_application_se/campus1.dart';
import 'package:flutter_application_se/campus2.dart';
import 'package:flutter_application_se/campus3.dart';
import 'package:flutter_application_se/counter1.dart';
import 'package:flutter_application_se/signinsf.dart';

class PageViewExample extends StatelessWidget {
  const PageViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: PageView(
          children: [
             MyCounterApp(),
             MySignInApp(),
           CampusConnect(),
           CampusConnect1(),
           CampusConnect2(),
           CampusConnect3(),
            // Container(
            //   color: Colors.amber,
            //   //child: MyCounterApp(),
            // ),
            // Container(
            //   color: Colors.blue,
            //   //child: MySignInApp(),
            // ),
            //  Container(
            //   color: Colors.cyan,
            //   child: Center(
            //     child: Text('Hello'),
            //   ),
            // ),
           GridView.builder(
            
              gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                ),
                
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(color: Colors.grey,
                  margin: EdgeInsets.all(10),);
                  },)

          ],
        ),
      ),
    );
  }
}