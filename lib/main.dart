import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    // MiLayoutChallenge(),
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.teal,
          body: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage(
                      "images/kranti01.jpg",
                    ),
                  ),
                  Text(
                    "Kranti Lahane",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40.0,
                      fontFamily: "Pacifico",
                    ),
                  ),
                  Text(
                    "FLUTTER DEVELOPER",
                    style: TextStyle(
                      fontFamily: "Source Sans Pro",
                      color: Colors.teal.shade100,
                      fontSize: 20.0,
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: 150.0,
                    child: Divider(height: 10.0,color: Colors.teal.shade100,),
                  ),
                  Card(
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: ListTile(
                          leading: Icon(
                            Icons.phone,
                            color: Colors.teal,
                          ),
                          title: Text(
                            "+91 9975845693",
                            style: TextStyle(
                                fontFamily: "Source Sans Pro",
                                color: Colors.teal.shade900,
                                fontSize: 20.0,
                                ),
                          ),
                        )),
                  ),
                  Card(
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: ListTile(
                          leading: Icon(
                            Icons.email,
                            color: Colors.teal,
                          ),
                          title: Text(
                            "krlahane@outlook.com",
                            style: TextStyle(
                                fontFamily: "Source Sans Pro",
                                fontSize: 20.0,
                                color: Colors.teal.shade900),
                          ),
                        )),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

class MiLayoutChallenge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                width: 100.0,
                height: double.infinity,
                color: Colors.red,
                child: Center(child: Text("Container 1")),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.yellow,
                  ),
                  Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.green,
                  ),
                ],
              ),
              Container(
                height: double.infinity,
                width: 100.0,
                color: Colors.blue,
                child: Center(child: Text("Container 3")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
