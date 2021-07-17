import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:login_page/popuptext.dart';

import 'package:login_page/textfield.dart';
import './matchdata.dart';

void main() => runApp(MaterialApp(
      home: HomePage(),
      routes: {
        '/entry': (context) => Newentry(),
      },
      // initialRoute: "/",
      //routes: {
      //"/": (context) => HomePage(),
      //"/addnew": (context) => Newentry(),
      //},
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static List<Matchdata> matchdata = [
    Matchdata(
        team1: 'Lynx',
        team2: 'Bomber',
        motm: 'Lionel Messi',
        team1goal: 3,
        team2goal: 1),
    Matchdata(
        team1: 'Krachi',
        team2: 'Lahore',
        motm: 'Lionel Messi',
        team1goal: 3,
        team2goal: 5),
    Matchdata(
        team1: 'Isb',
        team2: 'Multan',
        motm: 'Lionel Messi',
        team1goal: 3,
        team2goal: 6),
    Matchdata(
        team1: 'Lynx',
        team2: 'Eagle',
        motm: 'Lionel Messi',
        team1goal: 3,
        team2goal: 2),
    Matchdata(
        team1: 'Lynx',
        team2: 'Bomber',
        motm: 'Lionel Messi',
        team1goal: 3,
        team2goal: 1),
    Matchdata(
        team1: 'Lynx',
        team2: 'Eagle',
        motm: 'Lionel Messi',
        team1goal: 3,
        team2goal: 1),
    Matchdata(
        team1: 'Murree',
        team2: 'Sawat',
        motm: 'Lionel Messi',
        team1goal: 3,
        team2goal: 1),
    Matchdata(
        team1: 'Quetta',
        team2: 'Gawader',
        motm: 'Lionel Messi',
        team1goal: 3,
        team2goal: 1),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: const Text('Score Board'),
        
      ),
      floatingActionButton: FloatingActionButton.extended(
          label: Text('New'),
          elevation: 5,
          icon: Icon(Icons.add_chart),
          backgroundColor: Colors.grey[900],
          onPressed: () {
            Navigator.pushNamed(context, "/entry");
          }),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(),
            SizedBox(
              height: 30,
            ),
            Column(
                children: matchdata.map((tx) {
              return Container(
                height: 200,
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(25),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                              radius: 40,
                              backgroundImage:
                                  AssetImage('assets/images/images2.png')),
                          Text(tx.team1goal.toString(),
                              style: TextStyle(
                                  fontSize: 40, fontWeight: FontWeight.bold)),
                          Text(' :',
                              style: TextStyle(
                                  fontSize: 40, fontWeight: FontWeight.bold)),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            tx.team2goal.toString(),
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.bold),
                          ),
                          CircleAvatar(
                              radius: 40,
                              backgroundImage:
                                  AssetImage('assets/images/images.png'))
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              tx.team1,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.military_tech,
                              size: 15,
                            ),
                            Text(
                              tx.team2,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ]),
                    ),
                    Container(
                      width: 150,
                      child: Column(
                        children: [
                          Divider(
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundImage:
                                AssetImage('assets/images/profile.jpg'),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Man of The Match',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              Text(tx.motm),
                            ],
                          ),
                          InkWell(
                              child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.grey[900]),
                            child: Text('More Details'),
                            onPressed: () {
                              setState(() {});
                              showDialog(
                                  barrierDismissible: false,
                                  context: context,
                                  builder: (BuildContext context) => leadDialog(
                                      team_a: '${tx.team1}',
                                      team_b: '${tx.team1}',
                                      teama_goal: '${tx.team1goal}',
                                      teamb_goal: '${tx.team2goal}'));
                            },
                          ))
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }).toList()),
          ],
        ),
      ),
    );
  }
}
