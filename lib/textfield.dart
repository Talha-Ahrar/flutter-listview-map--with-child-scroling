import 'package:flutter/material.dart';

class Newentry extends StatefulWidget {
  const Newentry({
    Key? key,
  }) : super(key: key);

  @override
  _NewentryState createState() => _NewentryState();
}

class _NewentryState extends State<Newentry> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable

    return Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: FloatingActionButton.extended(
          label: Text('Save'),
          elevation: 5,
          backgroundColor: Colors.grey[900],
          onPressed: () {}),
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: const Text(
          'New Entry',
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          color: Colors.black,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Enter Team A Name:',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                fillColor: Colors.white.withOpacity(0.3),
                filled: true,
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
                labelText: 'First Team  ',
                labelStyle: TextStyle(color: Colors.white.withOpacity(0.3)),
                isDense: true,
                contentPadding: EdgeInsets.all(15),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Enter Team B Name:',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                fillColor: Colors.white.withOpacity(0.3),
                filled: true,
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
                labelText: 'Second Team  ',
                labelStyle: TextStyle(color: Colors.white.withOpacity(0.3)),
                isDense: true,
                contentPadding: EdgeInsets.all(15),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Man of The Match:',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                fillColor: Colors.white.withOpacity(0.3),
                filled: true,
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
                labelText: 'Enter Name ',
                labelStyle: TextStyle(color: Colors.white.withOpacity(0.3)),
                isDense: true,
                contentPadding: EdgeInsets.all(15),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Enter Team B Name:',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              keyboardType: TextInputType.number,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                fillColor: Colors.white.withOpacity(0.3),
                filled: true,
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
                labelText: 'Enter Goal  ',
                labelStyle: TextStyle(color: Colors.white.withOpacity(0.3)),
                isDense: true,
                contentPadding: EdgeInsets.all(15),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Enter First Team Goal',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              keyboardType: TextInputType.number,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                fillColor: Colors.white.withOpacity(0.3),
                filled: true,
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
                labelText: 'Enter Goal ',
                labelStyle: TextStyle(color: Colors.white.withOpacity(0.3)),
                isDense: true,
                contentPadding: EdgeInsets.all(15),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
