import 'dart:ui';

import 'package:flutter/material.dart';

// ignore: camel_case_types
class leadDialog extends StatefulWidget {
  // ignore: non_constant_identifier_names
  final team_a, team_b, teama_goal, teamb_goal;
  // ignore: non_constant_identifier_names
  const leadDialog(
      {Key? key,
      // ignore: non_constant_identifier_names
      required this.team_a,
      // ignore: non_constant_identifier_names
      required this.team_b,
      // ignore: non_constant_identifier_names
      required this.teama_goal,
      // ignore: non_constant_identifier_names
      required this.teamb_goal})
      : super(key: key);

  @override
  _leadDialogState createState() =>
      _leadDialogState(team_a, team_b, teama_goal, teamb_goal);
}

// ignore: camel_case_types
class _leadDialogState extends State<leadDialog> {
  _leadDialogState(this.team_a, this.team_b, this.teama_goal, this.teamb_goal);
  // ignore: non_constant_identifier_names
  final team_a, team_b, teama_goal, teamb_goal;

  @override
  Widget build(BuildContext context) {
    return Dialog(
        child: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(
          'assets/images/bk.jpg',
        ),
        fit: BoxFit.fill,
      )),
      height: 340.0,
      width: 360.0,
      child: Column(
        children: [
          Container(
              alignment: AlignmentDirectional.topEnd,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                    ),
                    primary: Colors.white.withOpacity(0.05),
                  ),
                  child: Icon(
                    Icons.cancel_presentation_outlined,
                    color: Colors.white,
                    size: 25,
                  ),
                  onPressed: () {
                    Navigator.pop(context, true);
                  })),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          color: Colors.white.withOpacity(0.99),
                        ),
                        padding: EdgeInsets.all(5),
                        child: Text(
                          'Match Summary',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 22.0),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Icon(
                        Icons.military_tech_sharp,
                        color: Colors.amber,
                        size: 150,
                      ),
                      Text(
                        'hiii',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
