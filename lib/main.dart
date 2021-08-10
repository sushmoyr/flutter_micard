import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MiCard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(width: double.infinity),
            CircleAvatar(
              radius: 48.0,
              backgroundImage: AssetImage('images/profile.jpg'),
            ),
            Text(
              "Killua Joldiak",
              style: GoogleFonts.pacifico(
                  textStyle:
                      TextStyle(fontSize: 36.0, color: Colors.pinkAccent[100])),
            ),
            Text(
              "Professional Assassin",
              style: GoogleFonts.openSans(
                textStyle: TextStyle(
                  fontSize: 16.0,
                  letterSpacing: 2.0,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
              child: SizedBox(
                width: 240.0,
                child: Divider(
                  height: 2.0,
                  thickness: 1.0,
                  color: Colors.pinkAccent[100],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
              child: Card(
                elevation: 2.0,
                borderOnForeground: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.pinkAccent[100],
                  ),
                  title: Text(
                    "+1 234 56789",
                    style: GoogleFonts.robotoMono(
                      textStyle: TextStyle(fontSize: 16.0),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
              child: Card(
                elevation: 2.0,
                borderOnForeground: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.pinkAccent[100],
                  ),
                  title: Text(
                    "killua@joldiaks.com",
                    style: GoogleFonts.robotoMono(
                      textStyle: TextStyle(fontSize: 16.0),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
