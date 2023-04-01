import 'package:flutter/material.dart';

const mainGreen = Color(0xFF165740);

class EditPage extends StatefulWidget {
  const EditPage({Key? key}) : super(key: key);

  @override
  State<EditPage> createState() => _EditPage();
}

class _EditPage extends State<EditPage> {

  String dropdownValue = '2023';
  String firstName = '';
  String pronouns = '';

  // List of items in our dropdown menu
  var items = [
    '2023',
    '2024',
    '2025',
    '2026',
    '2027',
  ];

  @override
  Widget build(BuildContext context) {
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
              "Edit Your Profile 🔧",
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
              padding: EdgeInsets.all(20.0),
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.all(0.0),
                ),
                 Text(
                  "First Name",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 35,
                    color: Color(0xff000000),
                  ),
                ),
              ],
            ),
            TextField(
              onChanged: (value) {
                firstName = value;
              },
              maxLength: 10,
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(14.0),
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.all(0.0),
                ),
                Text(
                  "Pronouns",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 35,
                    color: Color(0xff000000),
                  ),
                ),
              ],
            ),
            TextField(
              onChanged: (value) {
                pronouns = value;
              },
              maxLength: 10,
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(14.0),
            ),
            const Text(
              "Social Class",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                fontSize: 35,
                color: Color(0xff000000),
              ),
            ),
            DropdownButton(

              value: dropdownValue,

              // Array list of items
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                });
              },
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
                  onPressed: () {},
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
                  onPressed: () {},
                ),
              ] // Children
            )
          ] // Children
      ),
    );
  }
}