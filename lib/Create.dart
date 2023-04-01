import 'package:cypher_table_together/Confirmation.dart';
import 'package:cypher_table_together/bar.dart';
import 'package:flutter/material.dart';

const mainGreen = Color(0xFF165740);

class CreatePage extends StatefulWidget {
  // const CreatePage({Key? key}) : super(key: key);

  String? email;
  CreatePage({this.email});

  @override
  State<CreatePage> createState() => _CreatePage(email!);
}

class _CreatePage extends State<CreatePage> {

  String email;
  _CreatePage(this.email);

  TimeOfDay time = TimeOfDay(hour: 12, minute: 0);
  String timeString = " ";

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


            // Row (
            //   children: const [
            //     Text(
            //       "Choose a Time 🕐",
            //       textAlign: TextAlign.start,
            //       overflow: TextOverflow.clip,
            //       style: TextStyle(
            //         fontWeight: FontWeight.w400,
            //         fontStyle: FontStyle.normal,
            //         fontSize: 35,
            //         color: Color(0xff000000),
            //       ),
            //     ),
            //   ],
            // ),

            SizedBox(height: 16),
            ElevatedButton(
                onPressed: () async {
                  TimeOfDay? newTime = await showTimePicker(
                      context: context,
                      initialTime: time,
                  );
                  if (newTime == null) return;
                  setState(() {
                    time = newTime;
                    timeString = time.format(context);
                  });;
                  },
                style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Color.fromARGB(255, 16, 57, 40)), ),
                child: const Text("Select Time",
                  style: TextStyle(
                    fontSize: 40,
                    color: Color(0xffffffff),
                  ),
                  ),
            ),

            const Padding(
              padding: EdgeInsets.all(30.0),
            ),

            SizedBox(
              width: 350.0,
              height: 250.0,
              child: Card(
                color: Color(0xFFB9975B),
                child: Text(
                      'Max' + ' | ' + '2024' + '\n' + "(" + "He/Him" + ")\n\n" +
                  "🕓 " + timeString + " - Marketplace", textAlign: TextAlign.start,
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ), //Text
              ), //Card
            ), //SizedBox

            const Padding(
              padding: EdgeInsets.all(30.0),
            ),

            const Text(
              'Would You Like to Post This?',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),

            const Padding(
              padding: EdgeInsets.all(20.0),
            ),

            Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(30.0),
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
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(
                            100, 80), // put the width and height you want
                        backgroundColor: Colors.green
                    ),
                    child: const Text('Accept',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 35,
                        color: Color(0xff000000),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,MaterialPageRoute(builder: (context) => ConfirmationPage(email: email)));
                    },
                  ),
                ] // Children
            )
          ] // Children
      ),
    );
  }
}