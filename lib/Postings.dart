import 'package:cypher_table_together/Create.dart';
import 'package:cypher_table_together/bar.dart';
import 'package:flutter/material.dart';

const mainGreen = Color(0xFF165740);

class PostingsPage extends StatelessWidget {
  // const PostingsPage({super.key});

  String? email;
  PostingsPage({this.email});


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(25.0),
            ),
            Container(
              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              width: 500,
              height: 100,
              decoration: BoxDecoration(
                color: const Color(0xff165740),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.zero,
                border: Border.all(color: const Color(0x4d9e9e9e), width: 1),
              ),
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  "TableTogether",
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 35,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
            ),
            const Text(
              "Find a New Friend 😊",
              textAlign: TextAlign.start,
              overflow: TextOverflow.clip,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                fontSize: 35,
                color: Color(0xff000000),
              ),
            ),

            const Padding(
              padding: EdgeInsets.all(10.0),
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(
                      100, 80), // put the width and height you want
                  backgroundColor: Colors.cyan
              ),
              child: const Text('or Create a New Post 🍽',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: 20,
                  color: Color(0xff000000),
                ),
              ),
              onPressed: () {
                Navigator.push(
                    context,MaterialPageRoute(builder: (context) => CreatePage(email: email)));
              },
            ),


            const Padding(
              padding: EdgeInsets.all(220.0),
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(
                      100, 80), // put the width and height you want
                  backgroundColor: Colors.red
              ),
              child: const Text('Cancel',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: 35,
                  color: Color(0xff000000),
                ),
              ),
              onPressed: () {
                Navigator.push(
                    context,MaterialPageRoute(builder: (context) => BarPage(email: email)));
              },
            ),

          ]),
    );
  }
}