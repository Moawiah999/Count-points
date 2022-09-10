import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int teamA = 0;
  int teamB = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lime,
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Team 1",
                        style: TextStyle(fontSize: 32),
                      ),
                      Text(
                        "$teamA",
                        style: TextStyle(fontSize: 100),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.amber, minimumSize: Size(120, 40)),
                        onPressed: () {
                          setState(() {
                            teamA++;
                          });
                        },
                        child: Text(
                          "Add point",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.amber, minimumSize: Size(120, 40)),
                        onPressed: () {
                          setState(() {
                            teamA += 2;
                          });
                        },
                        child: Text(
                          "Add two points",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.amber, minimumSize: Size(120, 40)),
                        onPressed: () {
                          setState(() {
                            teamA += 3;
                          });
                        },
                        child: Text(
                          "Add three points",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 500,
                  child: VerticalDivider(
                    thickness: 2,
                    indent: 40,
                    endIndent: 1,
                    color: Colors.black,
                    width: 50,
                  ),
                ),
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Team 2",
                        style: TextStyle(fontSize: 32),
                      ),
                      Text(
                        "$teamB",
                        style: TextStyle(fontSize: 100),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.amber, minimumSize: Size(120, 40)),
                        onPressed: () {
                          setState(() {
                            teamB++;
                          });
                        },
                        child: Text(
                          "Add point",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.amber, minimumSize: Size(120, 40)),
                        onPressed: () {
                          setState(() {
                            teamB += 2;
                          });
                        },
                        child: Text(
                          "Add two points",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.amber, minimumSize: Size(120, 40)),
                        onPressed: () {
                          setState(() {
                            teamB += 3;
                          });
                        },
                        child: Text(
                          "Add add points",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: 50,
              width: 100,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.black),
                onPressed: () {
                  setState(() {
                    teamA = 0;
                    teamB = 0;
                  });
                },
                child: Text("Restart"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
