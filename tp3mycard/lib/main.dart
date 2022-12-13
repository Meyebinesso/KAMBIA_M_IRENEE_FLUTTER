import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/mon.jpg'),
              ),
              Text(
                'Irenee Kambia',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,

                ),
              ),
              Text(
                'Developpeur Flutter',
                style: TextStyle(
                  fontFamily: 'Source Sans pro',
                  fontSize: 20.0,
                  color: Colors.teal.shade100,
                  fontWeight: FontWeight.bold,
                  letterSpacing:2.5,

                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical:10.0,
                    horizontal: 25.0
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color:Colors.teal,
                  ),
                  title: Text('+228 92 53 66 29',
                    style: TextStyle(
                      color:Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize:20.0,
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical:10.0, horizontal: 25.0
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color:Colors.teal,
                  ),
                  title: Text('kambiairenee40@gmail.com',
                    style: TextStyle(
                      color:Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize:20.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
