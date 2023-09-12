import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;
// import 'dart:io';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
        useMaterial3: true,
      ),
      home: Scaffold(
        backgroundColor: Colors.grey[600],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            CircleAvatar(
            radius: 60.0,
            backgroundImage: AssetImage('images/Divine.jpg'),
          ),
          Text(
            'DSoft',
            style: TextStyle(
                fontFamily: 'Roboto',
                color: Colors.white70,
                fontWeight: FontWeight.bold,
                fontSize: 25),
          ),
          Text(
            'MOBILE DEVELOPER',
            style: TextStyle(
                fontFamily: 'Roboto',
                color: Colors.white70,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                fontSize: 20),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            child: Row(children: [
              Icon(
                Icons.phone,
                color: Colors.blueGrey,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                '+234 816 718 3777',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ]),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            child: Row(children: [
              Icon(
                Icons.email,
                color: Colors.blueGrey,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'Divineckpotential@gmail.com',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ]),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          SizedBox(height: 15,),
          ElevatedButton(
            child: Text('Open Github'),
            onPressed: () {
            launcher.launchUrl(Uri.parse('https://github.com/potential7'),);
          },
        ),
        ],
      ),
    ),)
    ,
    );
  }
}

