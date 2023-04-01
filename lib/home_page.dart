import 'package:flutter/material.dart';

const mainGreen = Color(0xFF165740);

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Container(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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



              SizedBox(
                width: 300.0,
                height: 80.0,
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: TextButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor: MaterialStateProperty.all<Color>(mainGreen),
                    ),
                    onPressed: () { },
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Tuesday April 4", style: TextStyle(fontSize: 20)),
                    ),
                  ),
                ),
              ),

              SizedBox(
                width: 300.0,
                height: 80.0,
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: TextButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor: MaterialStateProperty.all<Color>(mainGreen),
                    ),
                    onPressed: () { },
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Tuesday April 4", style: TextStyle(fontSize: 20)),
                    ),
                  ),
                ),
              ),

              SizedBox(
                width: 300.0,
                height: 80.0,
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: TextButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor: MaterialStateProperty.all<Color>(mainGreen),
                    ),
                    onPressed: () { },
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Tuesday April 4", style: TextStyle(fontSize: 20)),
                    ),
                  ),
                ),
              ),

              SizedBox(
                width: 300.0,
                height: 80.0,
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: TextButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor: MaterialStateProperty.all<Color>(mainGreen),
                    ),
                    onPressed: () { },
                    child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Tuesday April 4", style: TextStyle(fontSize: 20))
                    ),
                  ),
                ),
              ),

              SizedBox(
                width: 300.0,
                height: 80.0,
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: TextButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor: MaterialStateProperty.all<Color>(mainGreen),
                    ),
                    onPressed: () { },
                    child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Tuesday April 4", style: TextStyle(fontSize: 20))
                    ),
                  ),
                ),
              ),


              SizedBox(
                width: 300.0,
                height: 80.0,
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: TextButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor: MaterialStateProperty.all<Color>(mainGreen),
                    ),
                    onPressed: () { },
                    child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Tuesday April 4", style: TextStyle(fontSize: 20))
                    ),
                  ),
                ),
              ),

              SizedBox(
                width: 300.0,
                height: 80.0,
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: TextButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor: MaterialStateProperty.all<Color>(mainGreen),
                    ),
                    onPressed: () { },
                    child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Tuesday April 4", style: TextStyle(fontSize: 20))
                    ),
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.calendar_month), label: 'Calendar'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),

    );
  }
}