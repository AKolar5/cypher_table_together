import 'package:flutter/material.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({super.key});

  // comment

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
          "Your Tables",
          textAlign: TextAlign.start,
          overflow: TextOverflow.clip,
          style: TextStyle(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 35,
          color: Color(0xff000000),
          ),
        ),
    ]),
    );
  }
}