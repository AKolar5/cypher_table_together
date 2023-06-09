import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cypher_table_together/profile.dart';
import 'package:flutter/material.dart';
import 'package:cypher_table_together/bar.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

String? email = '';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.grey,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }

}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
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
              const Padding(
                padding: EdgeInsets.all(150.0),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(
                        300, 80) // put the width and height you want
                ),
                child: const Text('Sign in with Google!',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 35,
                    color: Color(0xff000000),
                  ),
                ),
                onPressed: () {
                  signInWithGoogle();
                  // Navigator.push(
                  //     context,MaterialPageRoute(builder: (context) => const ProfilePage()));
                },
              ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  signInWithGoogle() async {


    GoogleSignInAccount? googleUser= await GoogleSignIn().signIn();

    GoogleSignInAuthentication? googleAuth= await googleUser?.authentication;

    AuthCredential credential= GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken
    );



    UserCredential userCredential= await FirebaseAuth.instance.signInWithCredential(credential);

    // parsing string to make sure it has "@email.wm.edu"

    email = userCredential.user?.email;

    String? properDomain = "email.wm.edu";
    String domain = "";

    int indexOfAt = email!.indexOf('@');
    for (int i = indexOfAt + 1; i < email!.length; i++) {
        domain += email![i];
    }

    print(domain);

    if (domain == properDomain) {

      if (await emailExists(email)){
        Navigator.push(
            context,MaterialPageRoute(builder: (context) => BarPage(email : email)));
      }

      else{
        //TESTinitializeUserAndPutIntoDatabase();
        Navigator.push(
            context,MaterialPageRoute(builder: (context) => ProfilePage(email : email)));
      }

    }

    else {
      await GoogleSignIn().signOut();
      FirebaseAuth.instance.signOut();
    }



  }

  var db = FirebaseFirestore.instance;
  void TESTinitializeUserAndPutIntoDatabase() {
      // THIS IS A TEST TEST TEST TEST TEST





      db.collection("users").doc(email).set({
        "email": email,
        "first": "Jim",
        "pronouns": "He/Him",
        "social-class": "2024"
      });

  }

  Future<bool> emailExists(String? email) async{
    final snapshot = await db.collection("users").where("email", isEqualTo: email).get();
    if (snapshot.size > 0){
      return true;
    }
    return false;
  }

}