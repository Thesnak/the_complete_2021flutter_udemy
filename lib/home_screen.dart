import 'dart:ui';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        leading: Icon(
          Icons.menu,
        ),
        title: Text(
          "First APP",
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.notification_important,
            ),
            // When Icon Clicked
            onPressed: () {
              print('Notifed');
            },
          ),
          IconButton(
            icon: Text(
              "Hello",
            ),
            onPressed: () {
              print('Login');
            },
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        color: Colors.white70,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.end,
            children: [
              /*  Container(
                height: 100,
                  child: Text(
                "1st",
                style: TextStyle(
                  color: Colors.teal,
                  fontSize: 60.0,
                ),
              )),
              Container(
                child: Text(
                  "2nd",
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 50.0,
                  ),
                ),
              ),
              Container(
                child: Text(
                  "3rd",
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 40.0,
                  ),
                ),
              ),
              Container(
                child: Text(
                  "4th",
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 30.0,
                  ),
                ),
              ),
              Container(
                  height: 100,
                  child: Text(
                    "1st",
                    style: TextStyle(
                      color: Colors.teal,
                      fontSize: 60.0,
                    ),
                  )),
              Container(
                child: Text(
                  "2nd",
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 50.0,
                  ),
                ),
              ),
              Container(
                child: Text(
                  "3rd",
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 40.0,
                  ),
                ),
              ),
              Container(
                child: Text(
                  "4th",
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 30.0,
                  ),
                ),
              ),
              Container(
                  height: 100,
                  child: Text(
                    "1st",
                    style: TextStyle(
                      color: Colors.teal,
                      fontSize: 60.0,
                    ),
                  )),
              Container(
                child: Text(
                  "2nd",
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 50.0,
                  ),
                ),
              ),
              Container(
                child: Text(
                  "3rd",
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 40.0,
                  ),
                ),
              ),
              Container(
                child: Text(
                  "4th",
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 30.0,
                  ),
                ),
              ),
              Container(
                  height: 100,
                  child: Text(
                    "1st",
                    style: TextStyle(
                      color: Colors.teal,
                      fontSize: 60.0,
                    ),
                  )),
              Container(
                child: Text(
                  "2nd",
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 50.0,
                  ),
                ),
              ),
              Container(
                child: Text(
                  "3rd",
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 40.0,
                  ),
                ),
              ),
              Container(
                child: Text(
                  "4th",
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 30.0,
                  ),
                ),
              ),
              Container(
                  height: 100,
                  child: Text(
                    "1st",
                    style: TextStyle(
                      color: Colors.teal,
                      fontSize: 60.0,
                    ),
                  )),
              Container(
                child: Text(
                  "2nd",
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 50.0,
                  ),
                ),
              ),
              Container(
                child: Text(
                  "3rd",
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 40.0,
                  ),
                ),
              ),
              Container(
                child: Text(
                  "4th",
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 30.0,
                  ),
                ),
              ),*/
              Container(
                width: 200,
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),

                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Image(
                        image: NetworkImage(
                            "https://cdna.artstation.com/p/assets/images/images/032/587/688/large/bandar-islamic-warrior2.jpg?1606874496"),
                        height: 200,
                        width: 200,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        color: Colors.black.withOpacity(0.5),
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(
                          vertical: 5,
                        ),
                        child: Text(
                          "Islam",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
