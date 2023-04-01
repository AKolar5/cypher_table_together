import 'package:cypher_table_together/edit.dart';
import 'package:cypher_table_together/hall.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

const mainGreen = Color(0xFF165740);

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    String createDate(int day) {
      DateTime date = DateTime.now();
      if (day > 0){
        date = date.add(Duration(days: day));
      }
      String dateFormat = DateFormat("EEE, MMM d").format(date);
      return dateFormat;
    }

    return Scaffold(

      body:
        Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(25.0),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                alignment: Alignment.topCenter,
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
            ),

            const Padding(
              padding: EdgeInsets.all(15.0),
            ),

            const Text(
              "Choose a Day",
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

            SizedBox(
              width: 300.0,
              height: 80.0,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor: MaterialStateProperty.all<Color>(mainGreen),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,MaterialPageRoute(builder: (context) => const HallPage()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(createDate(0), style: const TextStyle(fontSize: 20)),
                  ),
                ),
              ),
            ),

              SizedBox(
                width: 300.0,
                height: 80.0,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor: MaterialStateProperty.all<Color>(mainGreen),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,MaterialPageRoute(builder: (context) => const HallPage()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(createDate(1), style: const TextStyle(fontSize: 20)),
                    ),
                  ),
                ),
              ),

              SizedBox(
                width: 300.0,
                height: 80.0,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor: MaterialStateProperty.all<Color>(mainGreen),
                    ),
                    onPressed: () { Navigator.push(
                        context,MaterialPageRoute(builder: (context) => const HallPage()));},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(createDate(2), style: const TextStyle(fontSize: 20)),
                    ),
                  ),
                ),
              ),

              SizedBox(
                width: 300.0,
                height: 80.0,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor: MaterialStateProperty.all<Color>(mainGreen),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,MaterialPageRoute(builder: (context) => const HallPage()));
                    },
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(createDate(3), style: const TextStyle(fontSize: 20))
                    ),
                  ),
                ),
              ),

              SizedBox(
                width: 300.0,
                height: 80.0,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor: MaterialStateProperty.all<Color>(mainGreen),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,MaterialPageRoute(builder: (context) => const HallPage()));
                    },
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(createDate(4), style: const TextStyle(fontSize: 20))
                    ),
                  ),
                ),
              ),


              SizedBox(
                width: 300.0,
                height: 80.0,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor: MaterialStateProperty.all<Color>(mainGreen),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,MaterialPageRoute(builder: (context) => const HallPage()));
                    },
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(createDate(5), style: const TextStyle(fontSize: 20))
                    ),
                  ),
                ),
              ),

              SizedBox(
                width: 300.0,
                height: 80.0,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor: MaterialStateProperty.all<Color>(mainGreen),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,MaterialPageRoute(builder: (context) => const HallPage()));
                    },
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(createDate(6), style: const TextStyle(fontSize: 20))
                    ),
                  ),
                ),
              ),

            ],
          ),
      );
  }
}