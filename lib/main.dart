import 'dart:async';
import 'package:crabee/Animation/FadeAnimation.dart';
import 'package:flutter/material.dart';
import './homepage.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(fontFamily: 'Nunito'),
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    ),
  );
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  void initState() {
    super.initState();

    Timer(
      Duration(seconds: 3),
      () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return HomePage();
          },
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FadeAnimation(
                1.4,
                child: Container(
                  width: 170.0,
                  height: 170.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFFFDD54B),
                        blurRadius: 9,
                        offset: Offset(0, 6),
                      ),
                    ],
                    gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [
                        Color(0xFFFDB93F),
                        Color(0xFFFDD54B),
                      ],
                    ),
                    image: DecorationImage(
                      image: AssetImage('assets/images/car.png'),
                      scale: 0.6,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FadeAnimation(
                    1.5,
                    child: Text(
                      'Crabee',
                      style: TextStyle(
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF373D46),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  FadeAnimation(
                    1.6,
                    child: Text(
                      'Better way to fix your car',
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey[600],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
